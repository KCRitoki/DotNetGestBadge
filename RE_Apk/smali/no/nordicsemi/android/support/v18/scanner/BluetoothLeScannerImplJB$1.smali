.class Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$1;
.super Ljava/lang/Object;
.source "BluetoothLeScannerImplJB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 65
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-static {v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->access$000(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-static {v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->access$100(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 67
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-static {v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->access$200(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 68
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-static {v0}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->access$400(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-static {v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->access$300(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB$1;->this$0:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;

    invoke-static {v2}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;->access$000(Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerImplJB;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
