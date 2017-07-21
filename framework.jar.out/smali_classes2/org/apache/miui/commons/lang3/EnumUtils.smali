.class public Lorg/apache/miui/commons/lang3/EnumUtils;
.super Ljava/lang/Object;
.source "EnumUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/16 v7, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    const-string v1, "EnumClass must be defined."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 203
    .local v0, "constants":[Ljava/lang/Enum;, "[TE;"
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "%s does not seem to be an Enum type"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-static {v1, v4, v5}, Lorg/apache/miui/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    array-length v1, v0

    if-gt v1, v7, :cond_1

    move v1, v2

    :goto_1
    const-string v4, "Cannot store %s %s values in %s bits"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lorg/apache/miui/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    return-object p0

    :cond_0
    move v1, v3

    .line 203
    goto :goto_0

    :cond_1
    move v1, v3

    .line 204
    goto :goto_1
.end method

.method public static generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)J"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    .line 137
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-wide/16 v2, 0x0

    .line 139
    .local v2, "total":J
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 140
    .local v0, "constant":Ljava/lang/Enum;, "TE;"
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    shl-int/2addr v4, v5

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 141
    goto :goto_0

    .line 142
    .end local v0    # "constant":Ljava/lang/Enum;, "TE;"
    :cond_0
    return-wide v2
.end method

.method public static varargs generateBitVector(Ljava/lang/Class;[Ljava/lang/Enum;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)J"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/EnumUtils;->generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v1, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-object v1

    .line 113
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TE;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 56
    .local v1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "e":Ljava/lang/Enum;, "TE;"
    :cond_0
    return-object v4
.end method

.method public static isValidEnum(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v1, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return v1

    .line 90
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static processBitVector(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .locals 11
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;J)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 181
    .local v2, "constants":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 182
    .local v5, "results":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 183
    .local v1, "constant":Ljava/lang/Enum;, "TE;"
    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    shl-int/2addr v6, v7

    int-to-long v6, v6

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 184
    invoke-virtual {v5, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "constant":Ljava/lang/Enum;, "TE;"
    :cond_1
    return-object v5
.end method
