.class public Lcom/fingerprints/service/GoodixFingerprintManager;
.super Lcom/fingerprints/service/FingerprintManager;
.source "GoodixFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/service/GoodixFingerprintManager$EventType;,
        Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;
    }
.end annotation


# static fields
.field public static final CMD_RESULT_FAIL:I = -0x1

.field public static final CMD_RESULT_OK:I = 0x0

.field private static DEBUG:Z = false

.field public static final MAX_ID_NUM:I = 0xa

.field public static final MSG_ENROL_RESULT:I = 0x3ea

.field public static final MSG_ENROL_STATUS:I = 0x3eb

.field public static final MSG_IDENTIFY_RESULT:I = 0x3ed

.field public static final MSG_IDENTIFY_STATUS:I = 0x3ee

.field public static final RESULT_CANCELED:I = 0x66

.field public static final RESULT_ENROLL_DUPLICATE:I = 0x69

.field public static final RESULT_ENROLL_NO_SPACE:I = 0x75

.field public static final RESULT_FAILURE:I = 0x65

.field public static final RESULT_NOT_ENABLED:I = 0x73

.field public static final RESULT_NOT_ENROLLED:I = 0x72

.field public static final RESULT_NOT_REGISTERED_FINGERPRINT:I = 0x70

.field public static final RESULT_NOT_SUPPORT:I = 0x6f

.field public static final RESULT_NO_MATCH:I = 0x67

.field public static final RESULT_SENSOR_ERROR:I = 0x74

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final RESULT_TIMEOUT:I = 0x71

.field public static final RUNNING_ENROLING:I = 0x1f5

.field public static final RUNNING_ENROLPAUSE:I = 0x1f6

.field public static final RUNNING_IDENTIFYING:I = 0x1f7

.field public static final RUNNING_NONE:I = 0x1f4

.field public static final STATUS_FINGER_DOWN:I = 0x7d4

.field public static final STATUS_FINGER_UP:I = 0x7d5

.field public static final STATUS_IMAGE_POOR:I = 0x7d6

.field public static final STATUS_INPUTTING:I = 0x7d2

.field public static final STATUS_INPUT_COMPLETED:I = 0x7d3

.field public static final STATUS_WAITING_FOR_INPUT:I = 0x7d1

.field private static TAG:Ljava/lang/String;

.field private static mBundle:Landroid/os/Bundle;

.field private static mGuidedDataBundle:Landroid/os/Bundle;


# instance fields
.field private mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

.field private mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

.field private mGuidedDataCallback:Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;

.field private mHelperCallback:Lcom/fingerprints/service/FingerprintManager$HelperCallback;

.field private mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

.field private mService:Lcom/fingerprints/service/IGoodixFingerprintService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "GoodixFingermanager"

    sput-object v0, Lcom/fingerprints/service/GoodixFingerprintManager;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fingerprints/service/GoodixFingerprintManager;->DEBUG:Z

    return-void
.end method

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
    .line 269
    invoke-direct {p0}, Lcom/fingerprints/service/FingerprintManager;-><init>()V

    .line 270
    invoke-static {p1}, Lcom/fingerprints/service/IGoodixFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IGoodixFingerprintService;

    move-result-object v1

    iput-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mService:Lcom/fingerprints/service/IGoodixFingerprintService;

    .line 271
    new-instance v0, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;

    invoke-direct {v0, p0, p2}, Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;-><init>(Lcom/fingerprints/service/GoodixFingerprintManager;Landroid/os/Looper;)V

    .line 272
    .local v0, "handler":Lcom/fingerprints/service/GoodixFingerprintManager$EventHandler;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/fingerprints/service/GoodixFingerprintManager;->mBundle:Landroid/os/Bundle;

    .line 273
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    .line 275
    new-instance v1, Lcom/fingerprints/service/GoodixFingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/fingerprints/service/GoodixFingerprintManager$1;-><init>(Lcom/fingerprints/service/GoodixFingerprintManager;)V

    iput-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    .line 306
    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mService:Lcom/fingerprints/service/IGoodixFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IGoodixFingerprintService;->open(Lcom/fingerprints/service/IFingerprintClient;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to open mService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_0
    iput-object v0, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mEventHandler:Landroid/os/Handler;

    .line 309
    return-void
.end method

.method private PackGuidedData()V
    .locals 42

    .prologue
    .line 82
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "progress"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 83
    .local v20, "mGuidedProgress":I
    const/16 v34, 0x0

    .line 84
    .local v34, "mGuidedNextDirection":I
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "acceptance"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 85
    .local v6, "mGuidedAcceptance":I
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "stitched"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/16 v36, 0x0

    .line 86
    .local v36, "mGuidedStitched":Z
    :goto_0
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "immobile"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v8, 0x0

    .line 87
    .local v8, "mGuidedImmobile":Z
    :goto_1
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "reject_reason"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 88
    .local v37, "reason":I
    const/16 v35, 0x0

    .line 89
    .local v35, "mGuidedNumberOfMask":I
    const/16 v32, 0x0

    .line 90
    .local v32, "mGuidedLowCoverage":Z
    const/16 v33, 0x0

    .line 91
    .local v33, "mGuidedLowQuality":Z
    packed-switch v37, :pswitch_data_0

    .line 103
    :goto_2
    new-instance v9, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v9, v0, v1, v2}, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;-><init>(Lcom/fingerprints/service/FingerprintManager;ZZ)V

    .line 105
    .local v9, "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    new-instance v4, Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    const/4 v7, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/fingerprints/service/FingerprintManager$GuidedResult;-><init>(Lcom/fingerprints/service/FingerprintManager;IZZLcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;)V

    .line 132
    .local v4, "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    new-instance v10, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    new-instance v12, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v12, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v13, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v13, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v14, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v14, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v15, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v15, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 134
    .local v10, "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    new-instance v11, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    new-instance v13, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v13, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v14, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v14, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v15, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v15, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v16, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 137
    .local v11, "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v30, "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_3
    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_2

    .line 149
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "maskList"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v7, v31, 0x8

    add-int/lit8 v7, v7, 0x0

    aget v26, v5, v7

    .line 150
    .local v26, "bottomLeftX":I
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "maskList"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v7, v31, 0x8

    add-int/lit8 v7, v7, 0x1

    aget v27, v5, v7

    .line 151
    .local v27, "bottomLeftY":I
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "maskList"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v7, v31, 0x8

    add-int/lit8 v7, v7, 0x2

    aget v28, v5, v7

    .line 152
    .local v28, "bottomRightX":I
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "maskList"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v7, v31, 0x8

    add-int/lit8 v7, v7, 0x3

    aget v29, v5, v7

    .line 153
    .local v29, "bottomRightY":I
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "maskList"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v7, v31, 0x8

    add-int/lit8 v7, v7, 0x4

    aget v38, v5, v7

    .line 154
    .local v38, "topLeftX":I
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "maskList"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v7, v31, 0x8

    add-int/lit8 v7, v7, 0x5

    aget v39, v5, v7

    .line 155
    .local v39, "topLeftY":I
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "maskList"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v7, v31, 0x8

    add-int/lit8 v7, v7, 0x6

    aget v40, v5, v7

    .line 156
    .local v40, "topRightX":I
    sget-object v5, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v7, "maskList"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v7, v31, 0x8

    add-int/lit8 v7, v7, 0x7

    aget v41, v5, v7

    .line 157
    .local v41, "topRightY":I
    new-instance v16, Landroid/graphics/Point;

    move-object/from16 v0, v16

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 158
    .local v16, "pointTopLeft":Landroid/graphics/Point;
    new-instance v17, Landroid/graphics/Point;

    move-object/from16 v0, v17

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 159
    .local v17, "pointTopRight":Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v14, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 160
    .local v14, "pointBottomLeft":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v15, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 161
    .local v15, "pointBottomRight":Landroid/graphics/Point;
    new-instance v12, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 162
    .local v12, "mask":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_3

    .line 85
    .end local v4    # "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    .end local v8    # "mGuidedImmobile":Z
    .end local v9    # "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    .end local v10    # "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v11    # "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v12    # "mask":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v14    # "pointBottomLeft":Landroid/graphics/Point;
    .end local v15    # "pointBottomRight":Landroid/graphics/Point;
    .end local v16    # "pointTopLeft":Landroid/graphics/Point;
    .end local v17    # "pointTopRight":Landroid/graphics/Point;
    .end local v26    # "bottomLeftX":I
    .end local v27    # "bottomLeftY":I
    .end local v28    # "bottomRightX":I
    .end local v29    # "bottomRightY":I
    .end local v30    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    .end local v31    # "i":I
    .end local v32    # "mGuidedLowCoverage":Z
    .end local v33    # "mGuidedLowQuality":Z
    .end local v35    # "mGuidedNumberOfMask":I
    .end local v36    # "mGuidedStitched":Z
    .end local v37    # "reason":I
    .end local v38    # "topLeftX":I
    .end local v39    # "topLeftY":I
    .end local v40    # "topRightX":I
    .end local v41    # "topRightY":I
    :cond_0
    const/16 v36, 0x1

    goto/16 :goto_0

    .line 86
    .restart local v36    # "mGuidedStitched":Z
    :cond_1
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 94
    .restart local v8    # "mGuidedImmobile":Z
    .restart local v32    # "mGuidedLowCoverage":Z
    .restart local v33    # "mGuidedLowQuality":Z
    .restart local v35    # "mGuidedNumberOfMask":I
    .restart local v37    # "reason":I
    :pswitch_0
    const/16 v33, 0x1

    .line 95
    goto/16 :goto_2

    .line 97
    :pswitch_1
    const/16 v32, 0x1

    .line 98
    goto/16 :goto_2

    .line 164
    .restart local v4    # "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    .restart local v9    # "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    .restart local v10    # "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .restart local v11    # "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .restart local v30    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    .restart local v31    # "i":I
    :cond_2
    new-instance v25, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;-><init>(Lcom/fingerprints/service/FingerprintManager;Ljava/util/ArrayList;I)V

    .line 166
    .local v25, "mGuidedMaskList":Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;
    new-instance v18, Lcom/fingerprints/service/FingerprintManager$GuidedData;

    const/16 v21, 0x0

    move-object/from16 v19, p0

    move-object/from16 v22, v4

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    invoke-direct/range {v18 .. v25}, Lcom/fingerprints/service/FingerprintManager$GuidedData;-><init>(Lcom/fingerprints/service/FingerprintManager;IILcom/fingerprints/service/FingerprintManager$GuidedResult;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;)V

    .line 168
    .local v18, "mGuidedData":Lcom/fingerprints/service/FingerprintManager$GuidedData;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fingerprints/service/GoodixFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onProgress(Lcom/fingerprints/service/FingerprintManager$GuidedData;)V

    .line 169
    return-void

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/fingerprints/service/GoodixFingerprintManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fingerprints/service/GoodixFingerprintManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fingerprints/service/GoodixFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fingerprints/service/GoodixFingerprintManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/fingerprints/service/GoodixFingerprintManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fingerprints/service/GoodixFingerprintManager;->PackGuidedData()V

    return-void
.end method

.method static synthetic access$400(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/GoodixFingerprintManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/GoodixFingerprintManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fingerprints/service/GoodixFingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/GoodixFingerprintManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mService:Lcom/fingerprints/service/IGoodixFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IGoodixFingerprintService;->cancel(Lcom/fingerprints/service/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFingerData(I)V
    .locals 3
    .param p1, "fingerId"    # I

    .prologue
    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mService:Lcom/fingerprints/service/IGoodixFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p1}, Lcom/fingerprints/service/IGoodixFingerprintService;->removeTemplate(Lcom/fingerprints/service/IFingerprintClient;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIds()[I
    .locals 3

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mService:Lcom/fingerprints/service/IGoodixFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IGoodixFingerprintService;->getIds(Lcom/fingerprints/service/IFingerprintClient;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 372
    :goto_0
    return-object v1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 372
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mService:Lcom/fingerprints/service/IGoodixFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p1}, Lcom/fingerprints/service/IGoodixFingerprintService;->getService(Lcom/fingerprints/service/IFingerprintClient;Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 461
    :goto_0
    return-object v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 461
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTemplateIds()[I
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return-object v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mService:Lcom/fingerprints/service/IGoodixFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IGoodixFingerprintService;->release(Lcom/fingerprints/service/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V
    .locals 0
    .param p1, "captureCallback"    # Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    .line 320
    return-void
.end method

.method public setHelperCallback(Lcom/fingerprints/service/FingerprintManager$HelperCallback;)V
    .locals 0
    .param p1, "helperCallback"    # Lcom/fingerprints/service/FingerprintManager$HelperCallback;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mHelperCallback:Lcom/fingerprints/service/FingerprintManager$HelperCallback;

    .line 422
    return-void
.end method

.method public startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V
    .locals 6
    .param p1, "enrolCallback"    # Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 352
    :cond_0
    iput-object p1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mService:Lcom/fingerprints/service/IGoodixFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/fingerprints/service/IGoodixFingerprintService;->startEnrol(Lcom/fingerprints/service/IFingerprintClient;Ljava/lang/String;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V
    .locals 6
    .param p1, "identifyCallback"    # Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .param p2, "ids"    # [I

    .prologue
    .line 410
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 411
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 413
    :cond_1
    iput-object p1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mService:Lcom/fingerprints/service/IGoodixFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/GoodixFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, p2, v4, v5}, Lcom/fingerprints/service/IGoodixFingerprintService;->startIdentify(Lcom/fingerprints/service/IFingerprintClient;[IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
