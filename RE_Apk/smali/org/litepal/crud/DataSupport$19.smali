.class Lorg/litepal/crud/DataSupport$19;
.super Ljava/lang/Object;
.source "DataSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/DataSupport;->saveAsync()Lorg/litepal/crud/async/SaveExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/crud/DataSupport;

.field final synthetic val$executor:Lorg/litepal/crud/async/SaveExecutor;


# direct methods
.method constructor <init>(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/async/SaveExecutor;)V
    .locals 0

    .line 1817
    iput-object p1, p0, Lorg/litepal/crud/DataSupport$19;->this$0:Lorg/litepal/crud/DataSupport;

    iput-object p2, p0, Lorg/litepal/crud/DataSupport$19;->val$executor:Lorg/litepal/crud/async/SaveExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1820
    const-class v0, Lorg/litepal/crud/DataSupport;

    monitor-enter v0

    .line 1821
    :try_start_0
    iget-object v1, p0, Lorg/litepal/crud/DataSupport$19;->this$0:Lorg/litepal/crud/DataSupport;

    invoke-virtual {v1}, Lorg/litepal/crud/DataSupport;->save()Z

    move-result v1

    .line 1822
    iget-object v2, p0, Lorg/litepal/crud/DataSupport$19;->val$executor:Lorg/litepal/crud/async/SaveExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/SaveExecutor;->getListener()Lorg/litepal/crud/callback/SaveCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1823
    invoke-static {}, Lorg/litepal/LitePal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/crud/DataSupport$19$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/crud/DataSupport$19$1;-><init>(Lorg/litepal/crud/DataSupport$19;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1830
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
