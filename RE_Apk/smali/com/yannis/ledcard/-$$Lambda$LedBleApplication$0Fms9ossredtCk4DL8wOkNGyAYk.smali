.class public final synthetic Lcom/yannis/ledcard/-$$Lambda$LedBleApplication$0Fms9ossredtCk4DL8wOkNGyAYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/yannis/ledcard/LedBleApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/yannis/ledcard/LedBleApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/-$$Lambda$LedBleApplication$0Fms9ossredtCk4DL8wOkNGyAYk;->f$0:Lcom/yannis/ledcard/LedBleApplication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yannis/ledcard/-$$Lambda$LedBleApplication$0Fms9ossredtCk4DL8wOkNGyAYk;->f$0:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {v0}, Lcom/yannis/ledcard/LedBleApplication;->lambda$loadLEDBmpFromDB$0$LedBleApplication()V

    return-void
.end method
