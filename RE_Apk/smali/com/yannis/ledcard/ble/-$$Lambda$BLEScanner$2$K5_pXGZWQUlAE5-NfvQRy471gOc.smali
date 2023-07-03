.class public final synthetic Lcom/yannis/ledcard/ble/-$$Lambda$BLEScanner$2$K5_pXGZWQUlAE5-NfvQRy471gOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/yannis/ledcard/ble/BLEScanner$2;


# direct methods
.method public synthetic constructor <init>(Lcom/yannis/ledcard/ble/BLEScanner$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yannis/ledcard/ble/-$$Lambda$BLEScanner$2$K5_pXGZWQUlAE5-NfvQRy471gOc;->f$0:Lcom/yannis/ledcard/ble/BLEScanner$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yannis/ledcard/ble/-$$Lambda$BLEScanner$2$K5_pXGZWQUlAE5-NfvQRy471gOc;->f$0:Lcom/yannis/ledcard/ble/BLEScanner$2;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BLEScanner$2;->lambda$onBatchScanResults$0$BLEScanner$2()V

    return-void
.end method
