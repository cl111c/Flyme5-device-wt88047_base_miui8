.class public Lcom/fingerprints/service/FpcFingerprintManager;
.super Lcom/fingerprints/service/FingerprintManager;
.source "FpcFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;
    }
.end annotation


# static fields
.field private static mBundle:Landroid/os/Bundle;

.field private static mGuidedDataBundle:Landroid/os/Bundle;


# instance fields
.field private mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

.field private mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

.field private mGuidedDataCallback:Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;

.field private mHelperCallback:Lcom/fingerprints/service/FingerprintManager$HelperCallback;

.field private mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

.field private mService:Lcom/fingerprints/service/IFingerprintService;


# direct methods
.method constructor <init>(Landroid/os/IBinder;Landroid/os/Looper;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/fingerprints/service/FingerprintManager;-><init>()V

    .line 264
    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintService;

    move-result-object v1

    iput-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    .line 265
    new-instance v0, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;

    invoke-direct {v0, p0, p2}, Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;-><init>(Lcom/fingerprints/service/FpcFingerprintManager;Landroid/os/Looper;)V

    .line 266
    .local v0, "handler":Lcom/fingerprints/service/FpcFingerprintManager$EventHandler;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/fingerprints/service/FpcFingerprintManager;->mBundle:Landroid/os/Bundle;

    .line 267
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    .line 269
    new-instance v1, Lcom/fingerprints/service/FpcFingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/fingerprints/service/FpcFingerprintManager$1;-><init>(Lcom/fingerprints/service/FpcFingerprintManager;)V

    iput-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    .line 323
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->open(Lcom/fingerprints/service/IFingerprintClient;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to open mService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_0
    iput-object v0, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mEventHandler:Landroid/os/Handler;

    .line 327
    return-void
.end method

.method private PackGuidedData()V
    .locals 50

    .prologue
    .line 24
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "progress"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 25
    .local v30, "mGuidedProgress":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "next_direction"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 26
    .local v31, "mGuidedNextDirection":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "acceptance"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 27
    .local v6, "mGuidedAcceptance":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "stitched"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x0

    .line 28
    .local v7, "mGuidedStitched":Z
    :goto_0
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "immobile"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v8, 0x0

    .line 29
    .local v8, "mGuidedImmobile":Z
    :goto_1
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "reject_reason"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 30
    .local v45, "reason":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskNumber"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 31
    .local v44, "mGuidedNumberOfMask":I
    const/16 v42, 0x0

    .line 32
    .local v42, "mGuidedLowCoverage":Z
    const/16 v43, 0x0

    .line 33
    .local v43, "mGuidedLowQuality":Z
    packed-switch v45, :pswitch_data_0

    .line 45
    :goto_2
    new-instance v9, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v9, v0, v1, v2}, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;-><init>(Lcom/fingerprints/service/FingerprintManager;ZZ)V

    .line 47
    .local v9, "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    new-instance v4, Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/fingerprints/service/FingerprintManager$GuidedResult;-><init>(Lcom/fingerprints/service/FingerprintManager;IZZLcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;)V

    .line 49
    .local v4, "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    new-instance v12, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x1

    aget v11, v11, v17

    invoke-direct {v12, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 51
    .local v12, "lastTouch_bottom_left":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x2

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x3

    aget v11, v11, v17

    invoke-direct {v13, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 53
    .local v13, "lastTouch_bottom_right":Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x4

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x5

    aget v11, v11, v17

    invoke-direct {v14, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 55
    .local v14, "lastTouch_top_left":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x6

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x7

    aget v11, v11, v17

    invoke-direct {v15, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 57
    .local v15, "lastTouch_top_right":Landroid/graphics/Point;
    new-instance v18, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x1

    aget v11, v11, v17

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 59
    .local v18, "nextTouch_bottom_left":Landroid/graphics/Point;
    new-instance v19, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x2

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x3

    aget v11, v11, v17

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 61
    .local v19, "nextTouch_bottom_right":Landroid/graphics/Point;
    new-instance v20, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x4

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x5

    aget v11, v11, v17

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 63
    .local v20, "nextTouch_top_left":Landroid/graphics/Point;
    new-instance v21, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x6

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x7

    aget v11, v11, v17

    move-object/from16 v0, v21

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 65
    .local v21, "nextTouch_top_right":Landroid/graphics/Point;
    new-instance v10, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 67
    .local v10, "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    new-instance v16, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 70
    .local v16, "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v40, "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_3
    move/from16 v0, v41

    move/from16 v1, v44

    if-ge v0, v1, :cond_2

    .line 82
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x0

    aget v36, v5, v11

    .line 83
    .local v36, "bottomLeftX":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x1

    aget v37, v5, v11

    .line 84
    .local v37, "bottomLeftY":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x2

    aget v38, v5, v11

    .line 85
    .local v38, "bottomRightX":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x3

    aget v39, v5, v11

    .line 86
    .local v39, "bottomRightY":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x4

    aget v46, v5, v11

    .line 87
    .local v46, "topLeftX":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x5

    aget v47, v5, v11

    .line 88
    .local v47, "topLeftY":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x6

    aget v48, v5, v11

    .line 89
    .local v48, "topRightX":I
    sget-object v5, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x7

    aget v49, v5, v11

    .line 90
    .local v49, "topRightY":I
    new-instance v26, Landroid/graphics/Point;

    move-object/from16 v0, v26

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 91
    .local v26, "pointTopLeft":Landroid/graphics/Point;
    new-instance v27, Landroid/graphics/Point;

    move-object/from16 v0, v27

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 92
    .local v27, "pointTopRight":Landroid/graphics/Point;
    new-instance v24, Landroid/graphics/Point;

    move-object/from16 v0, v24

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 93
    .local v24, "pointBottomLeft":Landroid/graphics/Point;
    new-instance v25, Landroid/graphics/Point;

    move-object/from16 v0, v25

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 94
    .local v25, "pointBottomRight":Landroid/graphics/Point;
    new-instance v22, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v27}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 95
    .local v22, "mask":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_3

    .line 27
    .end local v4    # "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    .end local v7    # "mGuidedStitched":Z
    .end local v8    # "mGuidedImmobile":Z
    .end local v9    # "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    .end local v10    # "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v12    # "lastTouch_bottom_left":Landroid/graphics/Point;
    .end local v13    # "lastTouch_bottom_right":Landroid/graphics/Point;
    .end local v14    # "lastTouch_top_left":Landroid/graphics/Point;
    .end local v15    # "lastTouch_top_right":Landroid/graphics/Point;
    .end local v16    # "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v18    # "nextTouch_bottom_left":Landroid/graphics/Point;
    .end local v19    # "nextTouch_bottom_right":Landroid/graphics/Point;
    .end local v20    # "nextTouch_top_left":Landroid/graphics/Point;
    .end local v21    # "nextTouch_top_right":Landroid/graphics/Point;
    .end local v22    # "mask":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v24    # "pointBottomLeft":Landroid/graphics/Point;
    .end local v25    # "pointBottomRight":Landroid/graphics/Point;
    .end local v26    # "pointTopLeft":Landroid/graphics/Point;
    .end local v27    # "pointTopRight":Landroid/graphics/Point;
    .end local v36    # "bottomLeftX":I
    .end local v37    # "bottomLeftY":I
    .end local v38    # "bottomRightX":I
    .end local v39    # "bottomRightY":I
    .end local v40    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    .end local v41    # "i":I
    .end local v42    # "mGuidedLowCoverage":Z
    .end local v43    # "mGuidedLowQuality":Z
    .end local v44    # "mGuidedNumberOfMask":I
    .end local v45    # "reason":I
    .end local v46    # "topLeftX":I
    .end local v47    # "topLeftY":I
    .end local v48    # "topRightX":I
    .end local v49    # "topRightY":I
    :cond_0
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 28
    .restart local v7    # "mGuidedStitched":Z
    :cond_1
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 36
    .restart local v8    # "mGuidedImmobile":Z
    .restart local v42    # "mGuidedLowCoverage":Z
    .restart local v43    # "mGuidedLowQuality":Z
    .restart local v44    # "mGuidedNumberOfMask":I
    .restart local v45    # "reason":I
    :pswitch_0
    const/16 v43, 0x1

    .line 37
    goto/16 :goto_2

    .line 39
    :pswitch_1
    const/16 v42, 0x1

    .line 40
    goto/16 :goto_2

    .line 97
    .restart local v4    # "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    .restart local v9    # "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    .restart local v10    # "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .restart local v12    # "lastTouch_bottom_left":Landroid/graphics/Point;
    .restart local v13    # "lastTouch_bottom_right":Landroid/graphics/Point;
    .restart local v14    # "lastTouch_top_left":Landroid/graphics/Point;
    .restart local v15    # "lastTouch_top_right":Landroid/graphics/Point;
    .restart local v16    # "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .restart local v18    # "nextTouch_bottom_left":Landroid/graphics/Point;
    .restart local v19    # "nextTouch_bottom_right":Landroid/graphics/Point;
    .restart local v20    # "nextTouch_top_left":Landroid/graphics/Point;
    .restart local v21    # "nextTouch_top_right":Landroid/graphics/Point;
    .restart local v40    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    .restart local v41    # "i":I
    :cond_2
    new-instance v35, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    move/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;-><init>(Lcom/fingerprints/service/FingerprintManager;Ljava/util/ArrayList;I)V

    .line 99
    .local v35, "mGuidedMaskList":Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;
    new-instance v28, Lcom/fingerprints/service/FingerprintManager$GuidedData;

    move-object/from16 v29, p0

    move-object/from16 v32, v4

    move-object/from16 v33, v10

    move-object/from16 v34, v16

    invoke-direct/range {v28 .. v35}, Lcom/fingerprints/service/FingerprintManager$GuidedData;-><init>(Lcom/fingerprints/service/FingerprintManager;IILcom/fingerprints/service/FingerprintManager$GuidedResult;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;)V

    .line 101
    .local v28, "mGuidedData":Lcom/fingerprints/service/FingerprintManager$GuidedData;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onProgress(Lcom/fingerprints/service/FingerprintManager$GuidedData;)V

    .line 102
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FpcFingerprintManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FpcFingerprintManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$HelperCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FpcFingerprintManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mHelperCallback:Lcom/fingerprints/service/FingerprintManager$HelperCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fingerprints/service/FpcFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FpcFingerprintManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fingerprints/service/FpcFingerprintManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/fingerprints/service/FpcFingerprintManager;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/fingerprints/service/FpcFingerprintManager;->PackGuidedData()V

    return-void
.end method

.method static synthetic access$500()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fingerprints/service/FpcFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fingerprints/service/FpcFingerprintManager;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->cancel(Lcom/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFingerData(I)V
    .locals 3
    .param p1, "fingerId"    # I

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p1}, Lcom/fingerprints/service/IFingerprintService;->removeData(Lcom/fingerprints/service/IFingerprintClient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIds()[I
    .locals 3

    .prologue
    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->getIds(Lcom/fingerprints/service/IFingerprintClient;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 387
    :goto_0
    return-object v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 387
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p1}, Lcom/fingerprints/service/IFingerprintService;->getService(Lcom/fingerprints/service/IFingerprintClient;Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 469
    :goto_0
    return-object v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 469
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTemplateIds()[I
    .locals 3

    .prologue
    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->getTemplateIds(Lcom/fingerprints/service/IFingerprintClient;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 401
    :goto_0
    return-object v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 401
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->release(Lcom/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V
    .locals 0
    .param p1, "captureCallback"    # Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    .line 337
    return-void
.end method

.method public setHelperCallback(Lcom/fingerprints/service/FingerprintManager$HelperCallback;)V
    .locals 0
    .param p1, "helperCallback"    # Lcom/fingerprints/service/FingerprintManager$HelperCallback;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mHelperCallback:Lcom/fingerprints/service/FingerprintManager$HelperCallback;

    .line 428
    return-void
.end method

.method public startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V
    .locals 3
    .param p1, "enrolCallback"    # Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 367
    :cond_0
    iput-object p1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2}, Lcom/fingerprints/service/IFingerprintService;->startGuidedEnrol(Lcom/fingerprints/service/IFingerprintClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V
    .locals 3
    .param p1, "identifyCallback"    # Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .param p2, "ids"    # [I

    .prologue
    .line 416
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 417
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 419
    :cond_1
    iput-object p1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FpcFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2}, Lcom/fingerprints/service/IFingerprintService;->startIdentify(Lcom/fingerprints/service/IFingerprintClient;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
