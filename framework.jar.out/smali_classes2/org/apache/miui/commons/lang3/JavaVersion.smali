.class public final enum Lorg/apache/miui/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/miui/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private value:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 33
    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_0_9"

    const-string v2, "0.9"

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 38
    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_1"

    const v2, 0x3f8ccccd    # 1.1f

    const-string v3, "1.1"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 43
    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_2"

    const v2, 0x3f99999a    # 1.2f

    const-string v3, "1.2"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 48
    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_3"

    const v2, 0x3fa66666    # 1.3f

    const-string v3, "1.3"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 53
    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_4"

    const/4 v2, 0x4

    const v3, 0x3fb33333    # 1.4f

    const-string v4, "1.4"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 58
    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_5"

    const/4 v2, 0x5

    const-string v3, "1.5"

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 63
    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_6"

    const/4 v2, 0x6

    const v3, 0x3fcccccd    # 1.6f

    const-string v4, "1.6"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 68
    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_7"

    const/4 v2, 0x7

    const v3, 0x3fd9999a    # 1.7f

    const-string v4, "1.7"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 73
    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_8"

    const/16 v2, 0x8

    const v3, 0x3fe66666    # 1.8f

    const-string v4, "1.8"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/miui/commons/lang3/JavaVersion;

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .locals 0
    .param p3, "value"    # F
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput p3, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    .line 92
    iput-object p4, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method static get(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .locals 1
    .param p0, "nom"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v0, "0.9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 152
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const-string v0, "1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    goto :goto_0

    .line 137
    :cond_1
    const-string v0, "1.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    goto :goto_0

    .line 139
    :cond_2
    const-string v0, "1.3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    goto :goto_0

    .line 141
    :cond_3
    const-string v0, "1.4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    goto :goto_0

    .line 143
    :cond_4
    const-string v0, "1.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    goto :goto_0

    .line 145
    :cond_5
    const-string v0, "1.6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    goto :goto_0

    .line 147
    :cond_6
    const-string v0, "1.7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    goto :goto_0

    .line 149
    :cond_7
    const-string v0, "1.8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    goto :goto_0

    .line 152
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getJavaVersion(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .locals 1
    .param p0, "nom"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0
.end method

.method public static values()[Lorg/apache/miui/commons/lang3/JavaVersion;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

    invoke-virtual {v0}, [Lorg/apache/miui/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lorg/apache/miui/commons/lang3/JavaVersion;)Z
    .locals 2
    .param p1, "requiredVersion"    # Lorg/apache/miui/commons/lang3/JavaVersion;

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
