.class public final synthetic Lcom/yannis/ledcard/thread/-$$Lambda$ThreadPoolsUtil$0CbssU7vqoMDIiB78vrh4QYRSMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;


# direct methods
.method public synthetic constructor <init>(Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/thread/-$$Lambda$ThreadPoolsUtil$0CbssU7vqoMDIiB78vrh4QYRSMo;->f$0:Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yannis/ledcard/thread/-$$Lambda$ThreadPoolsUtil$0CbssU7vqoMDIiB78vrh4QYRSMo;->f$0:Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;

    invoke-static {v0}, Lcom/yannis/ledcard/thread/ThreadPoolsUtil;->lambda$executeWithCallback$0(Lcom/yannis/ledcard/thread/ThreadPoolsUtil$Call;)V

    return-void
.end method
