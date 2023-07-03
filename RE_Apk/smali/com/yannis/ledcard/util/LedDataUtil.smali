.class public Lcom/yannis/ledcard/util/LedDataUtil;
.super Ljava/lang/Object;
.source "LedDataUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final APP_DIR:Ljava/lang/String;

.field public static ASC_PATH:Ljava/lang/String; = null

.field public static CHARACTER_PATH:Ljava/lang/String; = null

.field public static ENCODE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LedDataUtil"

.field private static msgBinaryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sdCardDirPath:Ljava/lang/String;

.field private static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->sdf:Ljava/text/SimpleDateFormat;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->sdCardDirPath:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LED_IMG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->APP_DIR:Ljava/lang/String;

    const-string v0, "EUC_KR"

    .line 47
    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->ENCODE:Ljava/lang/String;

    const-string v0, "HZK12"

    .line 50
    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->CHARACTER_PATH:Ljava/lang/String;

    const-string v0, "ASC12"

    .line 51
    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->ASC_PATH:Ljava/lang/String;

    .line 1100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->msgBinaryMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 12

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmapToByteArray  bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string v1, "\u4e3a\u7a7a"

    goto :goto_0

    :cond_0
    const-string v1, "\u4e0d\u4e3a\u7a7a"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LedDataUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    new-array v11, v2, [I

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmapToByteArray  width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 839
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object v3, p0

    move-object v4, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 842
    rem-int/lit8 v3, p0, 0x8

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    rsub-int/lit8 v3, v3, 0x8

    :goto_1
    const/4 v5, 0x0

    :goto_2
    const-string v6, "0"

    if-ge v5, v3, :cond_2

    .line 844
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 846
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-ge v4, v2, :cond_5

    .line 848
    aget v3, v11, v4

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 849
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    const-string v3, "1"

    .line 851
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :goto_4
    rem-int v3, v4, p0

    add-int/lit8 v5, p0, -0x1

    if-ne v3, v5, :cond_4

    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 866
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yannis/ledcard/util/DataUtils;->binaryString2ByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static configureDefaultPics(Landroid/content/Context;I)V
    .locals 5

    const/16 p0, 0x10

    new-array v0, p0, [Ljava/lang/String;

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lcom/yannis/ledcard/mode/MainMode;->picture16Content:[Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_1
    sget-object v0, Lcom/yannis/ledcard/mode/MainMode;->picture12Content:[Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_2
    sget-object v0, Lcom/yannis/ledcard/mode/MainMode;->picture11Content:[Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_3

    const v2, 0x7f070083

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v2, 0x7f070082

    goto :goto_2

    :pswitch_1
    const v2, 0x7f070081

    goto :goto_2

    :pswitch_2
    const v2, 0x7f070080

    goto :goto_2

    :pswitch_3
    const v2, 0x7f07007f

    goto :goto_2

    :pswitch_4
    const v2, 0x7f07007e

    goto :goto_2

    :pswitch_5
    const v2, 0x7f07007d

    goto :goto_2

    :pswitch_6
    const v2, 0x7f07007c

    goto :goto_2

    :pswitch_7
    const v2, 0x7f07007b

    goto :goto_2

    :pswitch_8
    const v2, 0x7f07007a

    goto :goto_2

    :pswitch_9
    const v2, 0x7f070079

    goto :goto_2

    :pswitch_a
    const v2, 0x7f070078

    goto :goto_2

    :pswitch_b
    const v2, 0x7f070087

    goto :goto_2

    :pswitch_c
    const v2, 0x7f070086

    goto :goto_2

    :pswitch_d
    const v2, 0x7f070085

    goto :goto_2

    :pswitch_e
    const v2, 0x7f070084

    .line 166
    :goto_2
    :pswitch_f
    new-instance v3, Lcom/yannis/ledcard/bean/LEDBmp;

    aget-object v4, v0, v1

    invoke-direct {v3, v4, p1, v2}, Lcom/yannis/ledcard/bean/LEDBmp;-><init>(Ljava/lang/String;II)V

    .line 167
    invoke-virtual {v3}, Lcom/yannis/ledcard/bean/LEDBmp;->save()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convert2Img(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "1"

    const-string v1, " \u25cf "

    .line 1184
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    const-string v1, "   "

    .line 1185
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static drawBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 809
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    int-to-float v1, p1

    .line 810
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 811
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 812
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 813
    invoke-static {v0, p0}, Lcom/yannis/ledcard/util/ViewUtils;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 814
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 815
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, -0x1

    .line 816
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 817
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v4, -0x1000000

    .line 818
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    div-float/2addr v1, v4

    .line 819
    invoke-static {v1, v0}, Lcom/yannis/ledcard/util/ViewUtils;->correctTextY(FLandroid/graphics/Paint;)F

    move-result v1

    invoke-virtual {v3, p0, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p1
.end method

.method public static get64(Ljava/util/List;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;I)[B"
        }
    .end annotation

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/16 v1, 0x77

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x61

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    const/16 v3, 0x6e

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x67

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 181
    invoke-static {p0}, Lcom/yannis/ledcard/util/LedDataUtil;->getFlash(Ljava/util/List;)B

    move-result v1

    const/4 v3, 0x6

    aput-byte v1, v0, v3

    .line 182
    invoke-static {p0}, Lcom/yannis/ledcard/util/LedDataUtil;->getMarquee(Ljava/util/List;)B

    move-result v1

    const/4 v4, 0x7

    aput-byte v1, v0, v4

    .line 183
    invoke-static {p0}, Lcom/yannis/ledcard/util/LedDataUtil;->getModeAndSpeed(Ljava/util/List;)[B

    move-result-object v1

    const/16 v4, 0x8

    .line 184
    invoke-static {v1, v2, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    invoke-static {p0, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMsgLength(Ljava/util/List;I)[B

    move-result-object p0

    const/16 p1, 0x10

    .line 187
    invoke-static {p0, v2, v0, p1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x20

    aput-byte v2, v0, p0

    const/16 p0, 0x21

    aput-byte v2, v0, p0

    const/16 p0, 0x22

    aput-byte v2, v0, p0

    const/16 p0, 0x23

    aput-byte v2, v0, p0

    const/16 p0, 0x24

    aput-byte v2, v0, p0

    const/16 p0, 0x25

    aput-byte v2, v0, p0

    .line 194
    invoke-static {}, Lcom/yannis/ledcard/util/LedDataUtil;->getDate()[B

    move-result-object p0

    const/16 p1, 0x26

    .line 195
    invoke-static {p0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x0

    :goto_0
    const/16 p1, 0x13

    if-ge p0, p1, :cond_0

    add-int/lit8 p1, p0, 0x2c

    .line 197
    aput-byte v2, v0, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x3f

    aput-byte v2, v0, p0

    return-object v0
.end method

.method private static getByteCodeCH(Ljava/lang/String;)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 657
    :try_start_0
    sget-object v1, Lcom/yannis/ledcard/util/LedDataUtil;->ENCODE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 658
    aget-byte v2, p0, v1

    if-gez v2, :cond_0

    aget-byte v2, p0, v1

    add-int/lit16 v2, v2, 0x100

    goto :goto_0

    :cond_0
    aget-byte v2, p0, v1

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 659
    aget-byte v2, p0, v1

    if-gez v2, :cond_1

    aget-byte p0, p0, v1

    add-int/lit16 p0, p0, 0x100

    goto :goto_1

    :cond_1
    aget-byte p0, p0, v1

    :goto_1
    aput p0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 661
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public static getContentFromPictureMatrix([BI)Ljava/lang/String;
    .locals 12

    .line 55
    array-length v0, p0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    div-int v2, v0, p1

    const/16 v3, 0x8

    .line 58
    rem-int/2addr p1, v3

    rsub-int/lit8 p1, p1, 0x8

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    .line 61
    aget-byte v5, p0, v4

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v4, 0x1

    .line 63
    rem-int v7, v4, v2

    const-string v8, "1"

    const-string v9, "0"

    const/4 v10, 0x1

    if-nez v7, :cond_1

    if-eq p1, v3, :cond_1

    shr-int/2addr v5, p1

    rsub-int/lit8 v7, p1, 0x8

    :goto_1
    if-lez v7, :cond_3

    and-int/lit8 v11, v5, 0x1

    if-ne v11, v10, :cond_0

    move-object v11, v8

    goto :goto_2

    :cond_0
    move-object v11, v9

    .line 67
    :goto_2
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    const/16 v7, 0x8

    :goto_3
    if-lez v7, :cond_3

    and-int/lit8 v11, v5, 0x1

    if-ne v11, v10, :cond_2

    move-object v11, v8

    goto :goto_4

    :cond_2
    move-object v11, v9

    .line 74
    :goto_4
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 79
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDate()[B
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 295
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    .line 296
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/4 v3, 0x2

    .line 297
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    .line 298
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/16 v3, 0xb

    .line 299
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v0, v4

    const/16 v3, 0xc

    .line 300
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v0, v4

    const/16 v3, 0xd

    .line 301
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static getFlash(Ljava/util/List;)B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;)B"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 212
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 213
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yannis/ledcard/bean/SendContent;

    .line 214
    invoke-virtual {v2}, Lcom/yannis/ledcard/bean/SendContent;->isFlash()Z

    move-result v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    :goto_1
    int-to-byte v0, v0

    goto :goto_2

    :pswitch_1
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit8 v0, v0, -0x41

    goto :goto_1

    :pswitch_2
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    goto :goto_1

    :pswitch_3
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    :pswitch_4
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    and-int/lit8 v0, v0, -0x9

    goto :goto_1

    :pswitch_5
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    and-int/lit8 v0, v0, -0x5

    goto :goto_1

    :pswitch_6
    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    :pswitch_7
    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLedData(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 12

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmapToByteArray  bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string v1, "\u4e3a\u7a7a"

    goto :goto_0

    :cond_0
    const-string v1, "\u4e0d\u4e3a\u7a7a"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LedDataUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    new-array v11, v2, [I

    .line 881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmapToByteArray  width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 882
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object v3, p0

    move-object v4, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v2, :cond_2

    .line 883
    aget v3, v11, p0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-string v3, "1"

    .line 885
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v3, "0"

    .line 887
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 890
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 891
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imgStrLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n imgStr = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sbLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n sb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getLibMessageByteLength(Ljava/lang/String;I)I
    .locals 0

    .line 439
    invoke-static {p0, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getLibMessageLength(Ljava/lang/String;I)I

    move-result p0

    .line 440
    rem-int/lit8 p1, p0, 0x8

    if-nez p1, :cond_0

    .line 441
    div-int/lit8 p0, p0, 0x8

    goto :goto_0

    .line 443
    :cond_0
    div-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method private static getLibMessageLength(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 417
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 418
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v1, 0x8

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    return v1
.end method

.method public static getLibMsgBytes(Landroid/content/Context;ILjava/lang/String;)[B
    .locals 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 459
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ASC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/yannis/ledcard/util/LedDataUtil;->ASC_PATH:Ljava/lang/String;

    .line 462
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    goto :goto_0

    :sswitch_1
    const-string v5, "ko"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "ja"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    const-string v4, "HZK"

    const-string v5, "GB2312"

    packed-switch v9, :pswitch_data_0

    .line 483
    sput-object v5, Lcom/yannis/ledcard/util/LedDataUtil;->ENCODE:Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->CHARACTER_PATH:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const-string v9, "tw"

    .line 464
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BIG5"

    .line 466
    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->ENCODE:Ljava/lang/String;

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TWK"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->CHARACTER_PATH:Ljava/lang/String;

    goto :goto_1

    .line 470
    :cond_3
    sput-object v5, Lcom/yannis/ledcard/util/LedDataUtil;->ENCODE:Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->CHARACTER_PATH:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const-string v0, "ks_c_5601-1987"

    .line 479
    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->ENCODE:Ljava/lang/String;

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KRK"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->CHARACTER_PATH:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string v0, "shift-jis"

    .line 475
    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->ENCODE:Ljava/lang/String;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPK"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yannis/ledcard/util/LedDataUtil;->CHARACTER_PATH:Ljava/lang/String;

    .line 487
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 488
    invoke-static {v3, v2}, Lcom/yannis/ledcard/util/LedDataUtil;->getLibMessageByteLength(Ljava/lang/String;I)I

    move-result v5

    new-array v0, v6, [I

    aput v5, v0, v8

    aput v2, v0, v7

    .line 492
    const-class v9, B

    invoke-static {v9, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v10, v4, :cond_17

    new-array v14, v8, [C

    .line 495
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aput-char v15, v14, v7

    const/16 v6, 0x80

    const/16 v0, 0xb

    if-ne v2, v0, :cond_b

    if-lt v15, v6, :cond_8

    .line 502
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Lcom/yannis/ledcard/util/LedDataUtil;->getByteCodeCH(Ljava/lang/String;)[I

    move-result-object v6

    .line 504
    aget v8, v6, v7

    const/16 v16, 0x1

    aget v6, v6, v16

    invoke-static {v1, v8, v6, v2}, Lcom/yannis/ledcard/util/LedDataUtil;->readCharacter(Landroid/content/Context;III)[B

    move-result-object v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_6

    if-lez v12, :cond_4

    .line 509
    aget-object v18, v9, v8

    aget-byte v19, v18, v11

    mul-int/lit8 v20, v8, 0x2

    aget-byte v0, v6, v20

    and-int/lit16 v0, v0, 0xff

    ushr-int/2addr v0, v12

    int-to-byte v0, v0

    or-int v0, v19, v0

    int-to-byte v0, v0

    aput-byte v0, v18, v11

    .line 510
    aget-object v0, v9, v8

    add-int/lit8 v18, v11, 0x1

    aget-byte v19, v6, v20

    rsub-int/lit8 v21, v12, 0x8

    shl-int v7, v19, v21

    int-to-byte v7, v7

    aput-byte v7, v0, v18

    .line 511
    aget-object v0, v9, v8

    aget-byte v7, v0, v18

    const/16 v16, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-byte v3, v6, v20

    and-int/lit16 v3, v3, 0xff

    ushr-int/2addr v3, v12

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v0, v18

    const/4 v0, 0x5

    if-le v12, v0, :cond_5

    .line 513
    aget-object v0, v9, v8

    add-int/lit8 v3, v11, 0x2

    aget-byte v7, v6, v20

    shl-int v7, v7, v21

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    goto :goto_4

    .line 516
    :cond_4
    aget-object v0, v9, v8

    mul-int/lit8 v3, v8, 0x2

    aget-byte v7, v6, v3

    aput-byte v7, v0, v11

    .line 517
    aget-object v0, v9, v8

    add-int/lit8 v7, v11, 0x1

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v6, v3

    aput-byte v3, v0, v7

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    move-object/from16 v3, p2

    const/16 v0, 0xb

    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x4

    if-le v12, v3, :cond_7

    add-int/lit8 v11, v11, 0x1

    :cond_7
    add-int/lit8 v12, v12, 0xb

    and-int/lit8 v0, v12, 0x7

    int-to-byte v12, v0

    goto :goto_7

    .line 528
    :cond_8
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([C)V

    sget-object v3, Lcom/yannis/ledcard/util/LedDataUtil;->ENCODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x0

    .line 529
    aget-byte v0, v0, v3

    .line 531
    invoke-static {v1, v0, v2}, Lcom/yannis/ledcard/util/LedDataUtil;->readASC(Landroid/content/Context;II)[B

    move-result-object v0

    const/4 v3, 0x0

    :goto_5
    const/16 v6, 0xb

    if-ge v3, v6, :cond_a

    if-lez v12, :cond_9

    .line 534
    aget-object v7, v9, v3

    aget-byte v8, v7, v11

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    ushr-int/2addr v6, v12

    int-to-byte v6, v6

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v11

    .line 535
    aget-object v6, v9, v3

    add-int/lit8 v7, v11, 0x1

    aget-byte v8, v0, v3

    rsub-int/lit8 v18, v12, 0x8

    shl-int v8, v8, v18

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    goto :goto_6

    .line 537
    :cond_9
    aget-object v6, v9, v3

    aget-byte v7, v0, v3

    aput-byte v7, v6, v11
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_5

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    .line 542
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_b
    :goto_7
    const/16 v0, 0xc

    if-ne v2, v0, :cond_12

    const/16 v3, 0x80

    if-lt v15, v3, :cond_f

    .line 551
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v14}, Ljava/lang/String;-><init>([C)V

    invoke-static {v3}, Lcom/yannis/ledcard/util/LedDataUtil;->getByteCodeCH(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v6, 0x0

    .line 553
    aget v7, v3, v6

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-static {v1, v7, v3, v2}, Lcom/yannis/ledcard/util/LedDataUtil;->readCharacter(Landroid/content/Context;III)[B

    move-result-object v3

    if-nez v13, :cond_d

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v6, v0, :cond_c

    .line 558
    aget-object v8, v9, v6

    aget-byte v13, v3, v7

    aput-byte v13, v8, v11

    add-int/lit8 v8, v7, 0x1

    .line 559
    aget-byte v13, v3, v8

    and-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v3, v8

    .line 560
    aget-object v13, v9, v6

    add-int/lit8 v17, v11, 0x1

    aget-byte v8, v3, v8

    aput-byte v8, v13, v17

    const/4 v8, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v11, v11, 0x2

    const/4 v13, 0x1

    goto/16 :goto_c

    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_9
    if-ge v6, v0, :cond_e

    .line 570
    aget-byte v8, v3, v7

    and-int/lit16 v8, v8, 0xff

    const/4 v13, 0x4

    ushr-int/2addr v8, v13

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    .line 572
    aget-object v13, v9, v6

    add-int/lit8 v18, v11, -0x1

    aget-object v19, v9, v6

    aget-byte v19, v19, v18

    or-int/lit8 v0, v19, 0xf

    int-to-byte v0, v0

    aput-byte v0, v13, v18

    .line 573
    aget-object v0, v9, v6

    aget-object v13, v9, v6

    aget-byte v13, v13, v18

    and-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, v0, v18

    .line 574
    aget-byte v0, v3, v7

    const/4 v8, 0x4

    shl-int/2addr v0, v8

    or-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    aput-byte v0, v3, v7

    add-int/lit8 v0, v7, 0x1

    .line 575
    aget-byte v13, v3, v0

    and-int/lit16 v13, v13, 0xff

    ushr-int/2addr v13, v8

    or-int/lit16 v8, v13, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v3, v0

    .line 577
    aget-object v8, v9, v6

    aget-byte v0, v3, v0

    aget-byte v13, v3, v7

    and-int/2addr v0, v13

    int-to-byte v0, v0

    aput-byte v0, v8, v11

    const/4 v8, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0xc

    goto :goto_9

    :cond_e
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x0

    goto :goto_c

    .line 586
    :cond_f
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v14}, Ljava/lang/String;-><init>([C)V

    sget-object v3, Lcom/yannis/ledcard/util/LedDataUtil;->ENCODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x0

    .line 587
    aget-byte v0, v0, v3

    .line 589
    invoke-static {v1, v0, v2}, Lcom/yannis/ledcard/util/LedDataUtil;->readASC(Landroid/content/Context;II)[B

    move-result-object v0

    if-nez v13, :cond_10

    const/4 v3, 0x0

    :goto_a
    const/16 v6, 0xc

    if-ge v3, v6, :cond_11

    .line 593
    aget-object v6, v9, v3

    aget-byte v7, v0, v3

    aput-byte v7, v6, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    :goto_b
    const/16 v6, 0xc

    if-ge v3, v6, :cond_11

    .line 597
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x4

    ushr-int/2addr v7, v8

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    .line 599
    aget-object v8, v9, v3

    add-int/lit8 v18, v11, -0x1

    aget-object v19, v9, v3

    aget-byte v19, v19, v18

    or-int/lit8 v6, v19, 0xf

    int-to-byte v6, v6

    aput-byte v6, v8, v18

    .line 600
    aget-object v6, v9, v3

    aget-object v8, v9, v3

    aget-byte v8, v8, v18

    and-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v18

    .line 601
    aget-object v6, v9, v3

    aget-byte v7, v0, v3

    const/4 v8, 0x4

    shl-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v6, v11
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 607
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_12
    :goto_c
    const/16 v0, 0x10

    if-ne v2, v0, :cond_16

    const/16 v3, 0x80

    if-lt v15, v3, :cond_14

    .line 615
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v14}, Ljava/lang/String;-><init>([C)V

    invoke-static {v3}, Lcom/yannis/ledcard/util/LedDataUtil;->getByteCodeCH(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v6, 0x0

    .line 617
    aget v7, v3, v6

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-static {v1, v7, v3, v2}, Lcom/yannis/ledcard/util/LedDataUtil;->readCharacter(Landroid/content/Context;III)[B

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_d
    if-ge v7, v0, :cond_13

    .line 621
    aget-object v14, v9, v7

    aget-byte v15, v3, v8

    aput-byte v15, v14, v11

    .line 622
    aget-object v14, v9, v7

    add-int/lit8 v15, v11, 0x1

    add-int/lit8 v16, v8, 0x1

    aget-byte v16, v3, v16

    aput-byte v16, v14, v15

    const/4 v15, 0x2

    add-int/2addr v8, v15

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_13
    const/4 v15, 0x2

    add-int/lit8 v11, v11, 0x2

    goto :goto_f

    :cond_14
    const/4 v6, 0x1

    const/4 v15, 0x2

    .line 629
    :try_start_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v14}, Ljava/lang/String;-><init>([C)V

    sget-object v7, Lcom/yannis/ledcard/util/LedDataUtil;->ENCODE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v7, 0x0

    .line 630
    aget-byte v3, v3, v7

    .line 632
    invoke-static {v1, v3, v2}, Lcom/yannis/ledcard/util/LedDataUtil;->readASC(Landroid/content/Context;II)[B

    move-result-object v3

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v0, :cond_15

    .line 634
    aget-object v8, v9, v7

    aget-byte v14, v3, v7

    aput-byte v14, v8, v11
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :catch_2
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_f

    :cond_16
    const/4 v6, 0x1

    const/4 v15, 0x2

    :goto_f
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_17
    mul-int v0, v2, v5

    .line 644
    new-array v0, v0, [B

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_18

    .line 647
    aget-object v1, v9, v3

    mul-int v4, v3, v5

    const/4 v6, 0x0

    invoke-static {v1, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_18
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd37 -> :sswitch_2
        0xd64 -> :sswitch_1
        0xf2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getMarquee(Ljava/util/List;)B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;)B"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 256
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 257
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yannis/ledcard/bean/SendContent;

    .line 258
    invoke-virtual {v2}, Lcom/yannis/ledcard/bean/SendContent;->isMarquee()Z

    move-result v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    :goto_1
    int-to-byte v0, v0

    goto :goto_2

    :pswitch_1
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit8 v0, v0, -0x41

    goto :goto_1

    :pswitch_2
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x21

    goto :goto_1

    :pswitch_3
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    :pswitch_4
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    and-int/lit8 v0, v0, -0x9

    goto :goto_1

    :pswitch_5
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    and-int/lit8 v0, v0, -0x5

    goto :goto_1

    :pswitch_6
    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    :pswitch_7
    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getMessageBinaryLength(Ljava/lang/String;I)I
    .locals 1

    .line 1301
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->isUserFontLib(Ljava/lang/String;)Z

    move-result v0

    .line 1302
    invoke-static {p0, p1, v0}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageBinaryLength(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method private static getMessageBinaryLength(Ljava/lang/String;IZ)I
    .locals 3

    const-string v0, "[LED"

    .line 1306
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, ""

    .line 1307
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1308
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1309
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1310
    sget-object p2, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {p2, p0}, Lcom/yannis/ledcard/LedBleApplication;->getLEDBmpById(I)Lcom/yannis/ledcard/bean/LEDBmp;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1313
    invoke-virtual {p0}, Lcom/yannis/ledcard/bean/LEDBmp;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 1319
    invoke-static {p0, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getLibMessageLength(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1321
    :cond_2
    invoke-static {p0, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMsgBitmapPixLength(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMessageByteArray(Landroid/content/Context;Ljava/lang/String;I)[B
    .locals 6

    .line 1053
    invoke-static {p1}, Lcom/yannis/ledcard/util/LedDataUtil;->parseMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1055
    invoke-static {p1, p2}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageByteLength(Ljava/lang/String;I)I

    move-result v1

    .line 1057
    invoke-static {p1, p2}, Lcom/yannis/ledcard/util/LedDataUtil;->getWholeMessageBinaryLength(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, p1

    .line 1060
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const-string v4, "0"

    .line 1062
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1067
    :try_start_0
    sget-object v3, Lcom/yannis/ledcard/util/LedDataUtil;->msgBinaryMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    .line 1068
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1069
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4, p2}, Lcom/yannis/ledcard/util/LedDataUtil;->initMsgContentMap(Landroid/content/Context;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_2
    if-ge p0, p2, :cond_4

    const/4 v3, 0x0

    .line 1072
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1073
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1074
    sget-object v5, Lcom/yannis/ledcard/util/LedDataUtil;->msgBinaryMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 1076
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1077
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1079
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1085
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1094
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yannis/ledcard/util/DataUtils;->binaryString2ByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getMessageByteLength(Ljava/lang/String;I)I
    .locals 2

    .line 1269
    invoke-static {p0}, Lcom/yannis/ledcard/util/LedDataUtil;->parseMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1271
    invoke-static {v1, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageBinaryLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 1273
    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static getModeAndSpeed(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;)[B"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 308
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 309
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yannis/ledcard/bean/SendContent;

    .line 310
    invoke-virtual {v2}, Lcom/yannis/ledcard/bean/SendContent;->getMode()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    .line 311
    invoke-virtual {v2}, Lcom/yannis/ledcard/bean/SendContent;->getSpeed()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    and-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 314
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getMsgBitmapByteLength(Ljava/lang/String;I)I
    .locals 0

    .line 359
    invoke-static {p0, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMsgBitmapPixLength(Ljava/lang/String;I)I

    move-result p0

    .line 360
    div-int/lit8 p1, p0, 0x8

    rem-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    add-int/2addr p1, p0

    return p1
.end method

.method private static getMsgBitmapPixLength(Ljava/lang/String;I)I
    .locals 1

    .line 351
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    int-to-float p1, p1

    .line 352
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 353
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 354
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 355
    invoke-static {v0, p0}, Lcom/yannis/ledcard/util/ViewUtils;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getMsgBytes(Landroid/content/Context;ILjava/util/List;)[[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;)[[B"
        }
    .end annotation

    .line 761
    invoke-static {p1, p2}, Lcom/yannis/ledcard/util/LedDataUtil;->getTotalMessageLength(ILjava/util/List;)I

    move-result v0

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMsgBytes ------------ msgLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LedDataUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x1

    aput v0, v1, v3

    const/4 v0, 0x0

    aput p1, v1, v0

    .line 765
    const-class v3, B

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_5

    .line 767
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yannis/ledcard/bean/SendContent;

    .line 772
    invoke-static {v5}, Lcom/yannis/ledcard/util/LedDataUtil;->isNeedSendMsg(Lcom/yannis/ledcard/bean/SendContent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 773
    invoke-virtual {v5}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 775
    invoke-static {v5, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getSingleMsgByteLength(Ljava/lang/String;I)I

    move-result v6

    .line 776
    invoke-static {v5}, Lcom/yannis/ledcard/util/LangUtils;->isUserFontLib(Ljava/lang/String;)Z

    move-result v7

    .line 777
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_0

    const-string v9, "\u6570\u636e\u6765\u81ea\u5b57\u5e93"

    goto :goto_1

    :cond_0
    const-string v9, "\u6570\u636e\u6765\u81ea\u70b9\u9635\u56fe"

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    .line 781
    invoke-static {p0, p1, v5}, Lcom/yannis/ledcard/util/LedDataUtil;->getLibMsgBytes(Landroid/content/Context;ILjava/lang/String;)[B

    move-result-object v5

    goto :goto_2

    .line 784
    :cond_1
    invoke-static {v5, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->drawBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 785
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LedImg_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/yannis/ledcard/util/LedDataUtil;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 786
    invoke-static {v5, v7}, Lcom/yannis/ledcard/util/LedDataUtil;->saveBmp(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 788
    invoke-static {v5}, Lcom/yannis/ledcard/util/LedDataUtil;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_3

    const/4 v8, 0x0

    :goto_4
    if-ge v8, p1, :cond_2

    .line 792
    aget-object v9, v1, v8

    add-int v10, v4, v7

    mul-int v11, v8, v6

    add-int/2addr v11, v7

    aget-byte v11, v5, v11

    aput-byte v11, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    add-int/2addr v4, v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v1
.end method

.method public static getMsgBytes1(Landroid/content/Context;ILjava/util/List;)[[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;)[[B"
        }
    .end annotation

    .line 721
    invoke-static {p1, p2}, Lcom/yannis/ledcard/util/LedDataUtil;->getTotalMessageLength(ILjava/util/List;)I

    move-result v0

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMsgBytes ------------ msgLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " matrix = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LedDataUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p1, v1, v0

    .line 725
    const-class v2, B

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_3

    .line 727
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yannis/ledcard/bean/SendContent;

    .line 732
    invoke-static {v4}, Lcom/yannis/ledcard/util/LedDataUtil;->isNeedSendMsg(Lcom/yannis/ledcard/bean/SendContent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 733
    invoke-virtual {v4}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 734
    invoke-static {v4, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageByteLength(Ljava/lang/String;I)I

    move-result v5

    .line 736
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------------------------------*** \u65f6\u95f4 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/yannis/ledcard/activity/MainActivity;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\u8bfb\u53d6\u5b57\u5e93\u6570\u636e"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {p0, v4, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageByteArray(Landroid/content/Context;Ljava/lang/String;I)[B

    move-result-object v4

    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/yannis/ledcard/activity/MainActivity;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, p1, :cond_0

    .line 743
    aget-object v8, v1, v7

    add-int v9, v3, v6

    mul-int v10, v7, v5

    add-int/2addr v10, v6

    aget-byte v10, v4, v10

    aput-byte v10, v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static getMsgCrosswiseByte(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5

    const-string v0, "[LED"

    .line 1201
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    .line 1202
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1203
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1204
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1205
    sget-object v1, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {v1, v0}, Lcom/yannis/ledcard/LedBleApplication;->getLEDBmpById(I)Lcom/yannis/ledcard/bean/LEDBmp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {v0}, Lcom/yannis/ledcard/bean/LEDBmp;->getContent()Ljava/lang/String;

    move-result-object p0

    .line 1209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    div-int/2addr p1, p3

    mul-int p2, p2, p1

    add-int/2addr p1, p2

    .line 1210
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 1213
    :cond_0
    invoke-static {p1, p3}, Lcom/yannis/ledcard/util/LedDataUtil;->getSingleMsgByteLength(Ljava/lang/String;I)I

    move-result v0

    .line 1215
    invoke-static {p1, p3}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageBinaryLength(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v3, v0, 0x8

    sub-int/2addr v3, v1

    .line 1217
    new-array v1, v0, [B

    .line 1218
    invoke-static {p1}, Lcom/yannis/ledcard/util/LangUtils;->isUserFontLib(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1223
    invoke-static {p0, p3, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getLibMsgBytes(Landroid/content/Context;ILjava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 1226
    :cond_1
    invoke-static {p1, p3}, Lcom/yannis/ledcard/util/LedDataUtil;->drawBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1228
    invoke-static {p0}, Lcom/yannis/ledcard/util/LedDataUtil;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    :goto_0
    mul-int p2, p2, v0

    .line 1230
    invoke-static {p0, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1231
    invoke-static {v1}, Lcom/yannis/ledcard/util/DataUtils;->byteArray2BinaryString([B)Ljava/lang/String;

    move-result-object p0

    .line 1232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 1236
    :cond_2
    invoke-static {p1, p3}, Lcom/yannis/ledcard/util/LedDataUtil;->getSingleMsgByteLength(Ljava/lang/String;I)I

    move-result v0

    .line 1238
    invoke-static {p1, p3}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageBinaryLength(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v3, v0, 0x8

    sub-int/2addr v3, v1

    .line 1240
    new-array v1, v0, [B

    .line 1241
    invoke-static {p1}, Lcom/yannis/ledcard/util/LangUtils;->isUserFontLib(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1246
    invoke-static {p0, p3, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getLibMsgBytes(Landroid/content/Context;ILjava/lang/String;)[B

    move-result-object p0

    goto :goto_1

    .line 1249
    :cond_3
    invoke-static {p1, p3}, Lcom/yannis/ledcard/util/LedDataUtil;->drawBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1251
    invoke-static {p0}, Lcom/yannis/ledcard/util/LedDataUtil;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    :goto_1
    mul-int p2, p2, v0

    .line 1253
    invoke-static {p0, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1254
    invoke-static {v1}, Lcom/yannis/ledcard/util/DataUtils;->byteArray2BinaryString([B)Ljava/lang/String;

    move-result-object p0

    .line 1255
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static getMsgLength(Ljava/util/List;I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;I)[B"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 328
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 329
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yannis/ledcard/bean/SendContent;

    .line 331
    invoke-virtual {v3}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/yannis/ledcard/bean/SendContent;->isSelect()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    invoke-virtual {v3}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageByteLength(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/yannis/ledcard/util/DataUtils;->int2ByteArrayLSB2(I)[B

    move-result-object v3

    mul-int/lit8 v4, v2, 0x2

    .line 336
    aget-byte v6, v3, v5

    aput-byte v6, v0, v4

    add-int/2addr v4, v5

    .line 337
    aget-byte v3, v3, v1

    aput-byte v3, v0, v4

    goto :goto_2

    :cond_1
    :goto_1
    mul-int/lit8 v3, v2, 0x2

    .line 332
    aput-byte v1, v0, v3

    add-int/2addr v3, v5

    .line 333
    aput-byte v1, v0, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getSingleMsgByteLength(Ljava/lang/String;I)I
    .locals 1

    .line 395
    invoke-static {p0}, Lcom/yannis/ledcard/util/LangUtils;->isUserFontLib(Ljava/lang/String;)Z

    move-result v0

    .line 396
    invoke-static {p0, p1, v0}, Lcom/yannis/ledcard/util/LedDataUtil;->getSingleMsgByteLength(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method private static getSingleMsgByteLength(Ljava/lang/String;IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 400
    invoke-static {p0, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getLibMessageByteLength(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMsgBitmapByteLength(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getTotalMessageLength(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yannis/ledcard/bean/SendContent;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 373
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yannis/ledcard/bean/SendContent;

    .line 374
    invoke-static {v2}, Lcom/yannis/ledcard/util/LedDataUtil;->isNeedSendMsg(Lcom/yannis/ledcard/bean/SendContent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    invoke-virtual {v2}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-static {v2, p0}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageByteLength(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getWholeMessageBinaryLength(Ljava/lang/String;I)I
    .locals 2

    .line 1285
    invoke-static {p0}, Lcom/yannis/ledcard/util/LedDataUtil;->parseMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1286
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1287
    invoke-static {v1, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageBinaryLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static initMsgContentMap(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "[LED"

    .line 1108
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, ""

    .line 1110
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1113
    sget-object v3, Lcom/yannis/ledcard/LedBleApplication;->instance:Lcom/yannis/ledcard/LedBleApplication;

    invoke-virtual {v3, v1}, Lcom/yannis/ledcard/LedBleApplication;->getLEDBmpById(I)Lcom/yannis/ledcard/bean/LEDBmp;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1115
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1116
    invoke-virtual {v1}, Lcom/yannis/ledcard/bean/LEDBmp;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, p2

    :goto_0
    if-ge v2, p2, :cond_0

    mul-int v3, v2, v1

    add-int v4, v3, v1

    .line 1119
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1122
    :cond_0
    sget-object p2, Lcom/yannis/ledcard/util/LedDataUtil;->msgBinaryMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1124
    :cond_1
    invoke-static {v0}, Lcom/yannis/ledcard/util/LangUtils;->isUserFontLib(Ljava/lang/String;)Z

    move-result p1

    .line 1126
    invoke-static {v0, p2, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getSingleMsgByteLength(Ljava/lang/String;IZ)I

    move-result v1

    .line 1128
    invoke-static {v0, p2, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageBinaryLength(Ljava/lang/String;IZ)I

    move-result v3

    mul-int/lit8 v4, v1, 0x8

    sub-int/2addr v4, v3

    .line 1130
    new-array v3, v1, [B

    if-eqz p1, :cond_2

    .line 1136
    invoke-static {p0, p2, v0}, Lcom/yannis/ledcard/util/LedDataUtil;->getLibMsgBytes(Landroid/content/Context;ILjava/lang/String;)[B

    move-result-object p0

    goto :goto_1

    .line 1139
    :cond_2
    invoke-static {v0, p2}, Lcom/yannis/ledcard/util/LedDataUtil;->drawBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1141
    invoke-static {p0}, Lcom/yannis/ledcard/util/LedDataUtil;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    .line 1143
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, p2, :cond_3

    mul-int v6, v5, v1

    .line 1145
    invoke-static {p0, v6, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1146
    invoke-static {v3}, Lcom/yannis/ledcard/util/DataUtils;->byteArray2BinaryString([B)Ljava/lang/String;

    move-result-object v6

    .line 1147
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1148
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1150
    :cond_3
    sget-object p0, Lcom/yannis/ledcard/util/LedDataUtil;->msgBinaryMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1153
    :cond_4
    invoke-static {p1}, Lcom/yannis/ledcard/util/LangUtils;->isUserFontLib(Ljava/lang/String;)Z

    move-result v0

    .line 1155
    invoke-static {p1, p2, v0}, Lcom/yannis/ledcard/util/LedDataUtil;->getSingleMsgByteLength(Ljava/lang/String;IZ)I

    move-result v1

    .line 1157
    invoke-static {p1, p2, v0}, Lcom/yannis/ledcard/util/LedDataUtil;->getMessageBinaryLength(Ljava/lang/String;IZ)I

    move-result v3

    mul-int/lit8 v4, v1, 0x8

    sub-int/2addr v4, v3

    .line 1159
    new-array v3, v1, [B

    if-eqz v0, :cond_5

    .line 1165
    invoke-static {p0, p2, p1}, Lcom/yannis/ledcard/util/LedDataUtil;->getLibMsgBytes(Landroid/content/Context;ILjava/lang/String;)[B

    move-result-object p0

    goto :goto_3

    .line 1168
    :cond_5
    invoke-static {p1, p2}, Lcom/yannis/ledcard/util/LedDataUtil;->drawBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1170
    invoke-static {p0}, Lcom/yannis/ledcard/util/LedDataUtil;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    .line 1172
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    :goto_4
    if-ge v5, p2, :cond_6

    mul-int v6, v5, v1

    .line 1174
    invoke-static {p0, v6, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1175
    invoke-static {v3}, Lcom/yannis/ledcard/util/DataUtils;->byteArray2BinaryString([B)Ljava/lang/String;

    move-result-object v6

    .line 1176
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1177
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1179
    :cond_6
    sget-object p0, Lcom/yannis/ledcard/util/LedDataUtil;->msgBinaryMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method

.method private static isNeedSendMsg(Lcom/yannis/ledcard/bean/SendContent;)Z
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcom/yannis/ledcard/bean/SendContent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yannis/ledcard/bean/SendContent;->isSelect()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseMessage(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1009
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\\[(\\S+?)\\]"

    .line 1011
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1012
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1013
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1014
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 1015
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1017
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1019
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1020
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1021
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1022
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    .line 1023
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_1

    .line 1025
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-lez v5, :cond_2

    .line 1027
    invoke-virtual {v7, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    :cond_2
    :goto_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1031
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1032
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1033
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1038
    :cond_4
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method private static readASC(Landroid/content/Context;II)[B
    .locals 3

    const/4 v0, 0x0

    .line 701
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    sget-object v1, Lcom/yannis/ledcard/util/LedDataUtil;->ASC_PATH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    mul-int p1, p1, p2

    int-to-long v1, p1

    .line 703
    invoke-virtual {p0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 704
    new-array v0, p2, [B

    const/4 p1, 0x0

    .line 705
    invoke-virtual {p0, v0, p1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 706
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 708
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static readCharacter(Landroid/content/Context;III)[B
    .locals 2

    const/4 v0, 0x0

    .line 682
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    sget-object v1, Lcom/yannis/ledcard/util/LedDataUtil;->CHARACTER_PATH:Ljava/lang/String;

    .line 683
    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    and-int/lit8 p1, p1, 0x7f

    mul-int/lit16 p1, p1, 0xbf

    add-int/2addr p1, p2

    add-int/lit16 p1, p1, -0xff

    mul-int p1, p1, p3

    mul-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    .line 687
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    mul-int/lit8 p3, p3, 0x2

    .line 688
    new-array v0, p3, [B

    const/4 p1, 0x0

    .line 689
    invoke-virtual {p0, v0, p1, p3}, Ljava/io/InputStream;->read([BII)I

    .line 690
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 692
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u8bfb\u53d6\u5b57\u5e93\u6570\u636e"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private static saveBmp(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 13

    if-nez p0, :cond_0

    return-void

    .line 908
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 909
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    .line 911
    rem-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v2

    mul-int v3, v3, v1

    .line 914
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/yannis/ledcard/util/LedDataUtil;->sdCardDirPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/yannis/ledcard/util/LedDataUtil;->APP_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 916
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 918
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 919
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 920
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 922
    :cond_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x4d42

    add-int/lit8 v5, v3, 0x36

    int-to-long v5, v5

    const-wide/16 v7, 0x36

    .line 930
    invoke-static {p1, v4}, Lcom/yannis/ledcard/util/LedDataUtil;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 931
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/LedDataUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    const/4 v4, 0x0

    .line 932
    invoke-static {p1, v4}, Lcom/yannis/ledcard/util/LedDataUtil;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 933
    invoke-static {p1, v4}, Lcom/yannis/ledcard/util/LedDataUtil;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 934
    invoke-static {p1, v7, v8}, Lcom/yannis/ledcard/util/LedDataUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    const-wide/16 v5, 0x28

    const/16 v7, 0x18

    .line 946
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/LedDataUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    int-to-long v5, v0

    .line 947
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/LedDataUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    int-to-long v5, v1

    .line 948
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/LedDataUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    const/4 v5, 0x1

    .line 949
    invoke-static {p1, v5}, Lcom/yannis/ledcard/util/LedDataUtil;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 950
    invoke-static {p1, v7}, Lcom/yannis/ledcard/util/LedDataUtil;->writeWord(Ljava/io/FileOutputStream;I)V

    const-wide/16 v5, 0x0

    .line 951
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/LedDataUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 952
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/LedDataUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 953
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/LedDataUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 954
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/LedDataUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 955
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/LedDataUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 956
    invoke-static {p1, v5, v6}, Lcom/yannis/ledcard/util/LedDataUtil;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 958
    new-array v3, v3, [B

    .line 959
    rem-int/lit8 v5, v0, 0x4

    add-int/2addr v2, v5

    add-int/lit8 v5, v1, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    .line 962
    invoke-virtual {p0, v7, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    mul-int v10, v5, v2

    add-int/2addr v10, v8

    .line 963
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    add-int/lit8 v11, v10, 0x1

    .line 964
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v3, v11

    add-int/lit8 v10, v10, 0x2

    .line 965
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 969
    :cond_4
    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 970
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 971
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 973
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private static writeDword(Ljava/io/FileOutputStream;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    const/16 v3, 0x10

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/16 v3, 0x18

    shr-long/2addr p1, v3

    and-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput-byte p1, v0, p2

    .line 990
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method private static writeLong(Ljava/io/FileOutputStream;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    const/16 v3, 0x10

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/16 v3, 0x18

    shr-long/2addr p1, v3

    and-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput-byte p1, v0, p2

    .line 999
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method private static writeWord(Ljava/io/FileOutputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 981
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method
