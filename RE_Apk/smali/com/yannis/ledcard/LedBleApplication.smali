.class public Lcom/yannis/ledcard/LedBleApplication;
.super Lorg/litepal/LitePalApplication;
.source "LedBleApplication.java"


# static fields
.field public static instance:Lcom/yannis/ledcard/LedBleApplication;


# instance fields
.field public address:Ljava/lang/String;

.field public bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

.field public bleService:Lcom/yannis/ledcard/ble/BLEService;

.field private conn:Landroid/content/ServiceConnection;

.field private dbLEDBmpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/LEDBmp;",
            ">;"
        }
    .end annotation
.end field

.field public isConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/litepal/LitePalApplication;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->dbLEDBmpList:Ljava/util/List;

    .line 72
    new-instance v0, Lcom/yannis/ledcard/LedBleApplication$1;

    invoke-direct {v0, p0}, Lcom/yannis/ledcard/LedBleApplication$1;-><init>(Lcom/yannis/ledcard/LedBleApplication;)V

    iput-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->conn:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public boundService()V
    .locals 3

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yannis/ledcard/ble/BLEService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    iget-object v1, p0, Lcom/yannis/ledcard/LedBleApplication;->conn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yannis/ledcard/LedBleApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public connectDevice()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    const-string v1, "yannis"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    if-nez v0, :cond_0

    const-string v0, "connectDevice---------------------\u5f00\u59cb\u8fde\u63a5\u8bbe\u5907...."

    .line 149
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    iget-object v1, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v1}, Lcom/yannis/ledcard/ble/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/ble/BLEService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u5907\u5df2\u8fde\u63a5---isConnected\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public disconnectDevice()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    const-string v1, "yannis"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    if-eqz v0, :cond_0

    const-string v0, "disconnectDevice---------------------\u51c6\u5907\u65ad\u5f00\u8fde\u63a5...."

    .line 158
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BLEService;->disconnect()V

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u5907\u5df2\u65ad\u5f00---isConnected\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getLEDBmpById(I)Lcom/yannis/ledcard/bean/LEDBmp;
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->dbLEDBmpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yannis/ledcard/bean/LEDBmp;

    .line 174
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/LEDBmp;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public initBleDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    .line 92
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v0, p1}, Lcom/yannis/ledcard/ble/BleDevice;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 94
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    iget-object v1, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    const-string v2, "fee0"

    const-string v3, "fee1"

    invoke-virtual {v1, p1, v2, v3}, Lcom/yannis/ledcard/ble/BLEService;->getCharacteristicByMacAndName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yannis/ledcard/ble/BleDevice;->setBleWrite(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    :cond_0
    const-string p1, "yannis"

    const-string v0, "\u670d\u52a1\u672a\u5f00\u542f\uff01\u6216\u8bbe\u5907\u4e3a\u8fde\u63a5\uff01"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initDevice()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v1}, Lcom/yannis/ledcard/ble/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const-string v3, "fee0"

    const-string v4, "fee1"

    invoke-virtual {v0, v2, v3, v4}, Lcom/yannis/ledcard/ble/BLEService;->getCharacteristicByMacAndName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yannis/ledcard/ble/BleDevice;->setBleWrite(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$loadLEDBmpFromDB$0$LedBleApplication()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->dbLEDBmpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->dbLEDBmpList:Ljava/util/List;

    const-class v1, Lcom/yannis/ledcard/bean/LEDBmp;

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-static {v1, v2}, Lorg/litepal/crud/DataSupport;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public loadLEDBmpFromDB()V
    .locals 2

    .line 166
    invoke-static {}, Lcom/yannis/ledcard/thread/HBThreadPools;->getInstance()Lcom/yannis/ledcard/thread/AbsThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/yannis/ledcard/-$$Lambda$LedBleApplication$0Fms9ossredtCk4DL8wOkNGyAYk;

    invoke-direct {v1, p0}, Lcom/yannis/ledcard/-$$Lambda$LedBleApplication$0Fms9ossredtCk4DL8wOkNGyAYk;-><init>(Lcom/yannis/ledcard/LedBleApplication;)V

    invoke-virtual {v0, v1}, Lcom/yannis/ledcard/thread/AbsThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 45
    invoke-super {p0}, Lorg/litepal/LitePalApplication;->onCreate()V

    .line 46
    invoke-virtual {p0}, Lcom/yannis/ledcard/LedBleApplication;->boundService()V

    .line 47
    new-instance v0, Lcom/yannis/ledcard/ble/BleDevice;

    invoke-direct {v0}, Lcom/yannis/ledcard/ble/BleDevice;-><init>()V

    iput-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    .line 48
    sput-object p0, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    .line 49
    invoke-static {}, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->create()Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->backgroundMode(I)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->enabled(Z)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;

    move-result-object v0

    const/16 v1, 0x7d0

    .line 52
    invoke-virtual {v0, v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->minTimeBetweenCrashesMs(I)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;

    move-result-object v0

    const-class v1, Lcat/ereza/customactivityoncrash/activity/DefaultErrorActivity;

    .line 53
    invoke-virtual {v0, v1}, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->errorActivity(Ljava/lang/Class;)Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcat/ereza/customactivityoncrash/config/CaocConfig$Builder;->apply()V

    .line 56
    invoke-static {p0}, Lcat/ereza/customactivityoncrash/CustomActivityOnCrash;->install(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0}, Lcom/yannis/ledcard/LedBleApplication;->loadLEDBmpFromDB()V

    .line 58
    invoke-static {}, Lcom/yannis/ledcard/ble/BLEScanner;->getInstance()Lcom/yannis/ledcard/ble/BLEScanner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yannis/ledcard/ble/BLEScanner;->initBLE(Landroid/app/Application;)V

    .line 59
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->init(Landroid/app/Application;)V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 140
    invoke-super {p0}, Lorg/litepal/LitePalApplication;->onTerminate()V

    .line 141
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BLEService;->disconnect()V

    :cond_0
    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v0, p1}, Lcom/yannis/ledcard/ble/BleDevice;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public startNotification()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BleDevice;->getBleNotification()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    iget-object v1, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v1}, Lcom/yannis/ledcard/ble/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v2}, Lcom/yannis/ledcard/ble/BleDevice;->getBleNotification()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yannis/ledcard/ble/BLEService;->setCharacteristicNotification(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "yannis"

    const-string v1, "startNotification-----------------\u7279\u5f81\u503c\u4e3a\u7a7a"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public unBoundService()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/yannis/ledcard/LedBleApplication;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public write([B)V
    .locals 4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is Null = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "-------------- isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yannis"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/yannis/ledcard/LedBleApplication;->isConnected:Z

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BleDevice;->getBleWrite()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BleDevice;->getBleWrite()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 119
    iget-object p1, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BleDevice;->getBleWrite()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yannis/ledcard/ble/BLEService;->writValue(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_2

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "write-----------------\u7279\u5f81\u503c\u4e3a\u7a7a\uff1f "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yannis/ledcard/LedBleApplication;->bleDevice:Lcom/yannis/ledcard/ble/BleDevice;

    invoke-virtual {v0}, Lcom/yannis/ledcard/ble/BleDevice;->getBleWrite()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/yannis/ledcard/LedBleApplication;->bleService:Lcom/yannis/ledcard/ble/BLEService;

    invoke-virtual {p1}, Lcom/yannis/ledcard/ble/BLEService;->disconnect()V

    const-string p1, "write-----------------\u7279\u5f81\u503c\u4e3a\u7a7a"

    .line 123
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
