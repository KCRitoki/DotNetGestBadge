.class public Lcom/yannis/ledcard/ble/BLEScanner;
.super Ljava/lang/Object;
.source "BLEScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;,
        Lcom/yannis/ledcard/ble/BLEScanner$BLEScannerHolder;
    }
.end annotation


# static fields
.field private static REQUEST_CODE:I = 0x208

.field public static SCAN_TIME:I = 0x1388


# instance fields
.field private context:Landroid/app/Application;

.field private handler:Landroid/os/Handler;

.field isScanning:Z

.field private listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

.field mBAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBManager:Landroid/bluetooth/BluetoothManager;

.field mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

.field mScanFilter:Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

.field mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

.field mScanner:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

.field private scanBlueDeviceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private scanDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/ble/ScanDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->context:Landroid/app/Application;

    .line 46
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->isScanning:Z

    .line 51
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->handler:Landroid/os/Handler;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanBlueDeviceArray:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanDevices:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/yannis/ledcard/ble/BLEScanner;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yannis/ledcard/ble/BLEScanner;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yannis/ledcard/ble/BLEScanner;)Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    return-object p0
.end method

.method public static getInstance()Lcom/yannis/ledcard/ble/BLEScanner;
    .locals 1

    .line 61
    invoke-static {}, Lcom/yannis/ledcard/ble/BLEScanner$BLEScannerHolder;->access$000()Lcom/yannis/ledcard/ble/BLEScanner;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initBLE(Landroid/app/Application;)V
    .locals 3

    .line 65
    invoke-static {}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->getScanner()Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanner:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->handler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->context:Landroid/app/Application;

    .line 68
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth_le"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->context:Landroid/app/Application;

    const-string v1, "SORRY!BLE NOT SUPPORTED!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->context:Landroid/app/Application;

    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBManager:Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->context:Landroid/app/Application;

    const-string v1, "SORRY!YOU PHONE IS NOT SUPPORTED!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 84
    iget-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 86
    :cond_2
    new-instance p1, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    invoke-direct {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;-><init>()V

    .line 87
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->setLegacy(Z)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    move-result-object p1

    const/4 v1, 0x2

    .line 88
    invoke-virtual {p1, v1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->setScanMode(I)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    .line 89
    invoke-virtual {p1, v1, v2}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->setReportDelay(J)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->setUseHardwareBatchingIfSupported(Z)Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanSettings$Builder;->build()Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    .line 92
    new-instance p1, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    invoke-direct {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;-><init>()V

    .line 95
    invoke-virtual {p1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->build()Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanFilter:Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    return-void
.end method

.method public isBluetoothEnable(Landroid/app/Activity;)Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mBAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    sget v1, Lcom/yannis/ledcard/ble/BLEScanner;->REQUEST_CODE:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setListener(Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    return-void
.end method

.method public startScanBluetoothDevice()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanBlueDeviceArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanBlueDeviceArray:Ljava/util/ArrayList;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanBlueDeviceArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/yannis/ledcard/ble/BLEScanner$1;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/ble/BLEScanner$1;-><init>(Lcom/yannis/ledcard/ble/BLEScanner;)V

    sget v2, Lcom/yannis/ledcard/ble/BLEScanner;->SCAN_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->isScanning:Z

    .line 155
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    .line 158
    :cond_1
    new-instance v0, Lcom/yannis/ledcard/ble/BLEScanner$2;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/ble/BLEScanner$2;-><init>(Lcom/yannis/ledcard/ble/BLEScanner;)V

    iput-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v1, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;

    invoke-direct {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;-><init>()V

    invoke-virtual {v1}, Lno/nordicsemi/android/support/v18/scanner/ScanFilter$Builder;->build()Lno/nordicsemi/android/support/v18/scanner/ScanFilter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    invoke-interface {v1}, Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;->onStartScan()V

    const-string v1, "*********"

    const-string v2, "\u5f00\u59cb\u641c\u7d22............"

    .line 194
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanner:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    iget-object v2, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanSettings:Lno/nordicsemi/android/support/v18/scanner/ScanSettings;

    iget-object v3, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    invoke-virtual {v1, v0, v2, v3}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->startScan(Ljava/util/List;Lno/nordicsemi/android/support/v18/scanner/ScanSettings;Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V

    return-void
.end method

.method public stopScanBluetoothDevice()V
    .locals 2

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->isScanning:Z

    .line 200
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanner:Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->mScanCallback:Lno/nordicsemi/android/support/v18/scanner/ScanCallback;

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/support/v18/scanner/BluetoothLeScannerCompat;->stopScan(Lno/nordicsemi/android/support/v18/scanner/ScanCallback;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/yannis/ledcard/ble/BLEScanner;->listener:Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;

    iget-object v1, p0, Lcom/yannis/ledcard/ble/BLEScanner;->scanDevices:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/yannis/ledcard/ble/BLEScanner$OnDeviceScanListener;->onStopScan(Ljava/util/List;)V

    return-void
.end method
