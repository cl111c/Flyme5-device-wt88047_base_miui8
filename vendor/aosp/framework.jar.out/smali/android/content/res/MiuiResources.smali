.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResources$PreloadDrawableSource;,
        Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    }
.end annotation


# static fields
.field private static final sMiuiThemeEnabled:Z

.field private static final sPreloadDrawableSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/content/res/MiuiResources$PreloadDrawableSource;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sUpdatedTimeSystem:Ljava/lang/Long;


# instance fields
.field private mIsPreloadOverlayed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPreloadingIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lmiui/content/res/ThemeResources;

.field private mThemeValues:Lmiui/content/res/ThemeValues;

.field private mUpdatedTime:J

.field private mValueLoadedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    .line 34
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 94
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    .line 83
    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 84
    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .line 85
    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    .line 86
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    const-wide/16 v2, -0x1

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    .line 83
    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 84
    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .line 85
    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    .line 86
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    const-wide/16 v2, -0x1

    .line 109
    invoke-direct/range {p0 .. p5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    .line 83
    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 84
    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .line 85
    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    .line 86
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 110
    return-void
.end method

.method private static delayGCAtlasPreloadedBitmaps()V
    .locals 2

    .prologue
    .line 332
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    .line 334
    .local v0, "preload":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 335
    invoke-static {}, Lmiui/content/res/ThemeNativeUtils;->terminateAtlas()V

    .line 336
    new-instance v1, Landroid/content/res/MiuiResources$1;

    invoke-direct {v1, v0}, Landroid/content/res/MiuiResources$1;-><init>(Landroid/util/LongSparseArray;)V

    invoke-virtual {v1}, Landroid/content/res/MiuiResources$1;->start()V

    .line 346
    :cond_0
    return-void
.end method

.method public static isPreloadedCacheEmpty()Z
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Landroid/content/res/MiuiResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadValues()V
    .locals 6

    .prologue
    .line 479
    iget-wide v2, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    iget-wide v4, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 481
    :cond_0
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    .line 482
    .local v0, "tmp":Lmiui/content/res/ThemeValues;
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget-object v2, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 484
    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    goto :goto_0
.end method

.method private resolveOverlayValue(ILandroid/util/TypedValue;)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 159
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    if-gtz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_3

    :cond_2
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 165
    :cond_3
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 166
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 167
    .local v0, "themeInteger":Ljava/lang/Integer;
    if-nez v0, :cond_4

    .line 168
    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 170
    :cond_4
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    goto :goto_0
.end method


# virtual methods
.method public getIntArray(I)[I
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 181
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeIntArray(I)[I

    move-result-object v0

    .line 183
    .local v0, "array":[I
    if-eqz v0, :cond_0

    .line 187
    .end local v0    # "array":[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 209
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 215
    .end local v0    # "array":[Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 117
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 119
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 123
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 133
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 137
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 195
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "array":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 201
    .end local v0    # "array":[Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 489
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 490
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method getThemeIntArray(I)[I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 499
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 500
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method getThemeString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 494
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 495
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method getThemeStringArray(I)[Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 504
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 505
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/content/res/MiuiResources;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    .line 147
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 429
    :cond_0
    iput-object p1, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    .line 430
    if-nez p1, :cond_1

    .line 431
    const-string v0, "android"

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    .line 432
    invoke-static {p0}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 436
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->reset()V

    goto :goto_0

    .line 434
    :cond_1
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    goto :goto_1
.end method

.method isPreloadOverlayed(I)Z
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x0

    .line 357
    sget-boolean v5, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-nez v5, :cond_0

    .line 358
    invoke-super {p0, p1}, Landroid/content/res/Resources;->isPreloadOverlayed(I)Z

    move-result v5

    .line 380
    :goto_0
    return v5

    .line 361
    :cond_0
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 362
    .local v2, "isOverlayed":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 365
    sget-object v5, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 366
    .local v4, "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    if-eqz v4, :cond_3

    .line 367
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;

    .line 368
    .local v3, "source":Landroid/content/res/MiuiResources$PreloadDrawableSource;
    new-instance v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget v5, v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mCookie:I

    iget-object v6, v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    invoke-direct {v1, v5, v6, v7}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .line 370
    .local v1, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v5, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    .line 371
    iget-object v5, v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 372
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 377
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .end local v3    # "source":Landroid/content/res/MiuiResources$PreloadDrawableSource;
    :cond_3
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    monitor-enter v6

    .line 378
    :try_start_0
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 385
    sget-boolean v6, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-nez v6, :cond_1

    .line 386
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 419
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 390
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 395
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 396
    iget v6, p1, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_3

    iget v6, p1, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-le v6, v7, :cond_6

    .line 398
    :cond_3
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "file":Ljava/lang/String;
    const-string v6, ".xml"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 400
    new-instance v4, Landroid/content/res/MiuiResources$PreloadDrawableSource;

    iget v6, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {v4, p0, v6, v1, v8}, Landroid/content/res/MiuiResources$PreloadDrawableSource;-><init>(Landroid/content/res/MiuiResources;ILjava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v4, "source":Landroid/content/res/MiuiResources$PreloadDrawableSource;
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    if-eqz v6, :cond_4

    .line 402
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget-object v6, v6, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    .line 403
    iput-object v8, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 406
    :cond_4
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 407
    .local v3, "loadingId":Ljava/lang/Integer;
    sget-object v6, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 408
    .local v5, "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    if-nez v5, :cond_5

    .line 409
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 410
    .restart local v5    # "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    sget-object v6, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    :cond_5
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 417
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "loadingId":Ljava/lang/Integer;
    .end local v4    # "source":Landroid/content/res/MiuiResources$PreloadDrawableSource;
    .end local v5    # "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    :cond_6
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 243
    sget-boolean v6, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-object v5

    .line 247
    :cond_1
    new-instance v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v1, p1, v7}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    .line 248
    .local v1, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 249
    iput-object v1, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 252
    :cond_2
    const/4 v3, 0x0

    .line 253
    .local v3, "themeOverlay":Z
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 254
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .line 255
    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".xml"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v4, v6, v7

    .line 256
    .local v4, "withoutSuffixLength":I
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    .line 257
    const-string v6, ".9.png"

    invoke-virtual {v0, v6}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 259
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v6, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    .line 260
    if-eqz v3, :cond_3

    .line 261
    invoke-virtual {v0, v4}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    .line 262
    const-string v6, ".png"

    invoke-virtual {v0, v6}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 265
    :cond_3
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .line 270
    .end local v0    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    .end local v4    # "withoutSuffixLength":I
    :goto_1
    if-eqz v3, :cond_6

    .line 272
    :try_start_0
    iget v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v6, p1, Landroid/util/TypedValue;->density:I

    .line 273
    iget-object v2, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 274
    .local v2, "is":Ljava/io/InputStream;
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v7, ".9.png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 275
    invoke-static {v2}, Lmiui/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 277
    :cond_4
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {p0, p1, v2, v6}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 281
    :try_start_1
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v6

    goto :goto_0

    .line 267
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_5
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v6, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    goto :goto_1

    .line 278
    :catch_1
    move-exception v6

    .line 281
    :try_start_2
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 282
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 280
    :catchall_0
    move-exception v5

    .line 281
    :try_start_3
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 283
    :goto_2
    throw v5

    .line 286
    :cond_6
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    monitor-enter v6

    .line 287
    :try_start_4
    iget-object v7, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 282
    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 454
    sget-boolean v5, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-nez v5, :cond_1

    .line 455
    invoke-super {p0, p1}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 475
    .end local p1    # "array":Landroid/content/res/TypedArray;
    :cond_0
    return-object p1

    .line 458
    .restart local p1    # "array":Landroid/content/res/TypedArray;
    :cond_1
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    .line 459
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v5, v5, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 461
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 462
    .local v0, "data":[I
    const/4 v2, 0x0

    .line 463
    .local v2, "index":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 464
    add-int/lit8 v5, v2, 0x0

    aget v4, v0, v5

    .line 465
    .local v4, "type":I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 466
    .local v1, "id":I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    const/16 v5, 0x1f

    if-le v4, v5, :cond_3

    :cond_2
    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 468
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 469
    .local v3, "themeInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_4

    .line 470
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 473
    .end local v3    # "themeInteger":Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v2, v2, 0x6

    .line 474
    goto :goto_0
.end method

.method loadOverlayValue(Landroid/util/TypedValue;I)V
    .locals 0
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 151
    invoke-direct {p0, p2, p1}, Landroid/content/res/MiuiResources;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    .line 152
    return-void
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 223
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 225
    invoke-super {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 226
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v0, p2, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    .line 227
    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v1, p2, Landroid/util/TypedValue;->density:I

    .line 229
    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .line 238
    .end local v0    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :goto_0
    return-object v1

    .line 232
    .restart local v0    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    monitor-enter v2

    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .end local v0    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 234
    .restart local v0    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected reset()V
    .locals 2

    .prologue
    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .line 444
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 445
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    .line 446
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 8
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 299
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 300
    .local v0, "configChanges":I
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 302
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-nez v1, :cond_2

    .line 325
    :cond_0
    :goto_1
    return-void

    .line 299
    .end local v0    # "configChanges":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    .restart local v0    # "configChanges":I
    :cond_2
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v1, :cond_0

    .line 305
    iget-wide v2, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .line 307
    .local v2, "updatedTime":J
    invoke-static {v0}, Landroid/content/res/MiuiConfiguration;->needNewResources(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 308
    sget-object v4, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    monitor-enter v4

    .line 309
    :try_start_0
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()J

    move-result-wide v2

    .line 310
    sget-object v1, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gez v1, :cond_3

    .line 311
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    .line 312
    invoke-static {}, Landroid/content/res/MiuiResources;->delayGCAtlasPreloadedBitmaps()V

    .line 313
    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    .line 315
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 319
    :cond_4
    iget-wide v4, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_5

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_5

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    .line 322
    :cond_5
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->reset()V

    goto :goto_1

    .line 315
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
