.class Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;
.super Ljava/lang/Object;
.source "SubscriptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetUiccTransaction"
.end annotation


# instance fields
.field mApp3gpp2Result:I

.field mApp3gppResult:I

.field mRequestCount:I

.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SubscriptionHelper;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->this$0:Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->resetToDefault()V

    .line 75
    return-void
.end method


# virtual methods
.method getTransactionResult(I)I
    .locals 3
    .param p1, "newSubState"    # I

    .prologue
    const/16 v2, -0x64

    .line 96
    const/4 v0, 0x0

    .line 102
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mApp3gppResult:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mApp3gpp2Result:I

    if-ne v1, v2, :cond_1

    .line 105
    const/4 v0, 0x1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    if-nez p1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mApp3gppResult:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mApp3gpp2Result:I

    if-ne v1, v2, :cond_0

    .line 109
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method incrementReqCount()V
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mRequestCount:I

    .line 79
    return-void
.end method

.method isResponseReceivedForAllApps()Z
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mRequestCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetToDefault()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mApp3gppResult:I

    .line 117
    iput v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mApp3gpp2Result:I

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mRequestCount:I

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mRequestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 3gppApp result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mApp3gppResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 3gpp2 app result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mApp3gpp2Result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateAppResult(II)V
    .locals 1
    .param p1, "appType"    # I
    .param p2, "result"    # I

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mRequestCount:I

    .line 83
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 84
    :cond_0
    iput p2, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mApp3gppResult:I

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 87
    :cond_3
    iput p2, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccTransaction;->mApp3gpp2Result:I

    goto :goto_0
.end method
