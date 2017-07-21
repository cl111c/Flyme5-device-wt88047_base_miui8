.class public Landroid/app/fingerprint/FingerprintFPCImpl;
.super Ljava/lang/Object;
.source "FingerprintFPCImpl.java"

# interfaces
.implements Landroid/app/fingerprint/FingerprintInterface;
.implements Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
.implements Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
.implements Lcom/fingerprints/service/FingerprintManager$CaptureCallback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

.field mFpInterCaptureCallback:Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;

.field mFpInterEnrolCallback:Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;

.field mFpInterIdentifyCallback:Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;

.field private tempIDs:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "FingerprintFPCImpl"

    iput-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "FingerprintFPCImpl"

    iput-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private releaseFingerprintManager()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseFingerprintManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->release()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 282
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set FingerprintManager = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string v1, "Failed FingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private retyrIdentify()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->tempIDs:[I

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "retryStartIdentify()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "retyrIdentify, FingerprintManager is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->tempIDs:[I

    invoke-virtual {v0, p0, v1}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelEnrol()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancelEnrol()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Landroid/app/fingerprint/FingerprintFPCImpl;->releaseFingerprintManager()V

    .line 59
    return-void
.end method

.method public cancelIdentify()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancelIdentify()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Landroid/app/fingerprint/FingerprintFPCImpl;->releaseFingerprintManager()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->tempIDs:[I

    .line 124
    return-void
.end method

.method public deleteFingerData(I)I
    .locals 8
    .param p1, "fingerId"    # I

    .prologue
    .line 128
    iget-object v5, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteFingerData("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v2, -0x1

    .line 130
    .local v2, "result":I
    invoke-virtual {p0}, Landroid/app/fingerprint/FingerprintFPCImpl;->getIds()[I

    move-result-object v4

    .line 131
    .local v4, "storeFingerIds":[I
    const/4 v0, 0x0

    .line 133
    .local v0, "fingerIdExist":Z
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 134
    :cond_0
    const/4 v2, -0x1

    .line 135
    iget-object v5, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There is no fingerId in db - result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 164
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 138
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 139
    aget v5, v4, v1

    if-ne v5, p1, :cond_2

    .line 140
    const/4 v0, 0x1

    .line 138
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    :cond_3
    if-eqz v0, :cond_6

    .line 146
    iget-object v5, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fingerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exist - result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x0

    .line 149
    iget-object v5, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v5, :cond_4

    .line 150
    iget-object v5, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/fingerprints/service/FingerprintManager;->open(Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v5

    iput-object v5, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 153
    :cond_4
    iget-object v5, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v5, :cond_5

    .line 154
    iget-object v5, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string v6, "deleteFingerData, FingerprintManager is null."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v3, v2

    .line 164
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 156
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_5
    iget-object v5, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v5, p1}, Lcom/fingerprints/service/FingerprintManager;->deleteFingerData(I)V

    .line 157
    invoke-direct {p0}, Landroid/app/fingerprint/FingerprintFPCImpl;->releaseFingerprintManager()V

    goto :goto_2

    .line 161
    :cond_6
    const/4 v2, -0x2

    .line 162
    iget-object v5, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fingerId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not exist - result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getIds()[I
    .locals 3

    .prologue
    .line 63
    const/4 v1, 0x0

    new-array v0, v1, [I

    .line 65
    .local v0, "fingerIds":[I
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string v2, "getIds()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fingerprints/service/FingerprintManager;->open(Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 70
    :cond_0
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string v2, "getIds, FingerprintManager is null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-object v0

    .line 73
    :cond_1
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v1}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v0

    .line 74
    invoke-direct {p0}, Landroid/app/fingerprint/FingerprintFPCImpl;->releaseFingerprintManager()V

    goto :goto_0
.end method

.method public getTemplateIds()[I
    .locals 3

    .prologue
    .line 82
    const/4 v1, 0x0

    new-array v0, v1, [I

    .line 83
    .local v0, "templateIds":[I
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string v2, "getTemplateIds()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fingerprints/service/FingerprintManager;->open(Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 88
    :cond_0
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string v2, "getTemplateIds, FingerprintManager is null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-object v0

    .line 91
    :cond_1
    iget-object v1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v1}, Lcom/fingerprints/service/FingerprintManager;->getTemplateIds()[I

    move-result-object v0

    .line 92
    invoke-direct {p0}, Landroid/app/fingerprint/FingerprintFPCImpl;->releaseFingerprintManager()V

    goto :goto_0
.end method

.method public onCaptureCompleted()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterCaptureCallback:Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;->onCaptureCompleted()V

    .line 263
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 267
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCaptureFailed msg -- capture failed too fast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterCaptureCallback:Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;

    const/16 v1, 0x6a

    invoke-interface {v0, v1}, Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;->onCaptureFailed(I)V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureFailed msg -- capture failed reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterCaptureCallback:Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;

    const/16 v1, 0x69

    invoke-interface {v0, v1}, Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;->onCaptureFailed(I)V

    goto :goto_0
.end method

.method public onEnrolled(I)V
    .locals 1
    .param p1, "fingerId"    # I

    .prologue
    .line 228
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterEnrolCallback:Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;

    invoke-interface {v0, p1}, Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;->onEnrolled(I)V

    .line 229
    return-void
.end method

.method public onEnrollmentFailed()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterEnrolCallback:Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;->onEnrollmentFailed()V

    .line 234
    return-void
.end method

.method public onIdentified(IZ)V
    .locals 1
    .param p1, "fingerId"    # I
    .param p2, "updated"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterIdentifyCallback:Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;

    invoke-interface {v0, p1}, Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;->onIdentified(I)V

    .line 242
    return-void
.end method

.method public onInput()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterCaptureCallback:Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;->onInput()V

    .line 258
    return-void
.end method

.method public onNoMatch()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterIdentifyCallback:Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;->onNoMatch()V

    .line 247
    invoke-direct {p0}, Landroid/app/fingerprint/FingerprintFPCImpl;->retyrIdentify()V

    .line 248
    return-void
.end method

.method public onProgress(Lcom/fingerprints/service/FingerprintManager$GuidedData;)V
    .locals 8
    .param p1, "data"    # Lcom/fingerprints/service/FingerprintManager$GuidedData;

    .prologue
    const/4 v0, 0x1

    .line 193
    const/4 v5, -0x1

    .line 194
    .local v5, "resultMsg":I
    iget-object v6, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    iget v6, v6, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedAcceptance:I

    if-ne v6, v0, :cond_0

    .line 195
    .local v0, "bAcceptance":Z
    :goto_0
    iget-object v6, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    iget-boolean v1, v6, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedImmobile:Z

    .line 196
    .local v1, "bImmobile":Z
    iget-object v6, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    iget-object v6, v6, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedRejectReasons:Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

    iget-boolean v2, v6, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;->guidedLowCoverage:Z

    .line 197
    .local v2, "bLowCoverage":Z
    iget-object v6, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    iget-object v6, v6, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedRejectReasons:Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

    iget-boolean v3, v6, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;->guidedLowQuality:Z

    .line 198
    .local v3, "bLowQuality":Z
    iget-object v6, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    iget-boolean v4, v6, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedStitched:Z

    .line 199
    .local v4, "bStitched":Z
    if-eqz v0, :cond_3

    .line 200
    if-nez v4, :cond_1

    .line 201
    iget-object v6, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onProgress msg -- Latest Touch outside enrolled area"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/16 v5, 0x66

    .line 223
    :goto_1
    iget-object v6, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterEnrolCallback:Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;

    iget v7, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedProgress:I

    invoke-interface {v6, v5, v7}, Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;->onProgress(II)V

    .line 224
    return-void

    .line 194
    .end local v0    # "bAcceptance":Z
    .end local v1    # "bImmobile":Z
    .end local v2    # "bLowCoverage":Z
    .end local v3    # "bLowQuality":Z
    .end local v4    # "bStitched":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    .restart local v0    # "bAcceptance":Z
    .restart local v1    # "bImmobile":Z
    .restart local v2    # "bLowCoverage":Z
    .restart local v3    # "bLowQuality":Z
    .restart local v4    # "bStitched":Z
    :cond_1
    if-nez v1, :cond_2

    .line 204
    iget-object v6, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onProgress msg -- Good Finger Placement"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v5, 0x64

    goto :goto_1

    .line 207
    :cond_2
    iget-object v6, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onProgress msg -- Touch too similar to the previous one"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v5, 0x65

    goto :goto_1

    .line 211
    :cond_3
    if-eqz v3, :cond_4

    .line 212
    iget-object v6, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onProgress msg -- Rejected due to poor image quality"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 v5, 0x67

    goto :goto_1

    .line 214
    :cond_4
    if-eqz v2, :cond_5

    .line 215
    iget-object v6, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onProgress msg -- Rejected due to low Sensor Coverage"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/16 v5, 0x68

    goto :goto_1

    .line 218
    :cond_5
    iget-object v6, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onProgress msg -- Touch rejected"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/16 v5, 0x69

    goto :goto_1
.end method

.method public onWaitingForInput()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterCaptureCallback:Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;->onWaitingForInput()V

    .line 253
    return-void
.end method

.method public runCheckerboardTest()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public runSelfTest()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public setCaptureCallback(Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;)V
    .locals 2
    .param p1, "captureCallback"    # Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;

    .prologue
    .line 169
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 170
    iput-object p1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterCaptureCallback:Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;

    .line 171
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0, p0}, Lcom/fingerprints/service/FingerprintManager;->setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCaptureCallback()--mFingerprintManager==null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startEnrol(Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;I)I
    .locals 2
    .param p1, "enrolCallback"    # Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 37
    iput-object p1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterEnrolCallback:Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;

    .line 39
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startEnrol()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->open(Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 43
    :cond_0
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0, p0, p2}, Lcom/fingerprints/service/FingerprintManager;->startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    .line 47
    :cond_1
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string v1, "FingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public startIdentify(Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;[I)I
    .locals 2
    .param p1, "identifyCallback"    # Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;
    .param p2, "ids"    # [I

    .prologue
    .line 100
    iput-object p1, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFpInterIdentifyCallback:Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;

    .line 102
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startIdentify()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->open(Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_1

    .line 107
    iput-object p2, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->tempIDs:[I

    .line 108
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0, p0, p2}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 111
    :cond_1
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintFPCImpl;->TAG:Ljava/lang/String;

    const-string v1, "FingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, -0x1

    goto :goto_0
.end method
