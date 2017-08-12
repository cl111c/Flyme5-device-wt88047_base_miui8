.class public Lmeizu/mdm/MdmPolicyManager;
.super Ljava/lang/Object;
.source "MdmPolicyManager.java"


# static fields
.field private static final ALLOWED:Ljava/lang/String; = "true"

.field private static final CONFIG_PATH:Ljava/lang/String; = "/data/system/mdm-config.xml"

.field private static final DISALLOWED:Ljava/lang/String; = "false"

.field private static final PROPERTY_INIT:Ljava/lang/String; = "persist.sys.mdm.init"

.field private static final PROPERTY_PRFIX:Ljava/lang/String; = "persist.sys.mdm."

.field private static final PROPERTY_PROJECT:Ljava/lang/String; = "ro.mdm.project"

.field private static final TAG:Ljava/lang/String; = "MdmPolicyManager"

.field public static final TYPE_ALLOW_ACTIVE_APN:Ljava/lang/String; = "active_apn"

.field public static final TYPE_ALLOW_ADB:Ljava/lang/String; = "adb"

.field public static final TYPE_ALLOW_BT:Ljava/lang/String; = "bt"

.field public static final TYPE_ALLOW_CAMERA:Ljava/lang/String; = "camera"

.field public static final TYPE_ALLOW_CLEAN_DATA:Ljava/lang/String; = "clean_data"

.field public static final TYPE_ALLOW_CT_CALL_IN:Ljava/lang/String; = "ct_call_in"

.field public static final TYPE_ALLOW_CT_CALL_OUT:Ljava/lang/String; = "ct_call_out"

.field public static final TYPE_ALLOW_CT_DATA_BLOCK:Ljava/lang/String; = "ct_data_block"

.field public static final TYPE_ALLOW_CT_DATA_CONN:Ljava/lang/String; = "ct_data_conn"

.field public static final TYPE_ALLOW_CT_SMS_REC:Ljava/lang/String; = "ct_sms_rec"

.field public static final TYPE_ALLOW_CT_SMS_SEND:Ljava/lang/String; = "ct_sms_send"

.field public static final TYPE_ALLOW_DATA:Ljava/lang/String; = "data"

.field public static final TYPE_ALLOW_FACTORY:Ljava/lang/String; = "factory"

.field public static final TYPE_ALLOW_FINGER:Ljava/lang/String; = "finger"

.field public static final TYPE_ALLOW_FINGER_UNLOCK:Ljava/lang/String; = "f_unlock"

.field public static final TYPE_ALLOW_LOCATION:Ljava/lang/String; = "location"

.field public static final TYPE_ALLOW_MIC:Ljava/lang/String; = "mic"

.field public static final TYPE_ALLOW_MOBILE_CONF:Ljava/lang/String; = "mobile_conf"

.field public static final TYPE_ALLOW_NCT_DATA_BLOCK:Ljava/lang/String; = "nct_data_block"

.field public static final TYPE_ALLOW_NCT_SMS_BLOCK:Ljava/lang/String; = "nct_sms_block"

.field public static final TYPE_ALLOW_NCT_VOICE_BLOCK:Ljava/lang/String; = "nct_voice_block"

.field public static final TYPE_ALLOW_NFC:Ljava/lang/String; = "nfc"

.field public static final TYPE_ALLOW_OTG:Ljava/lang/String; = "otg"

.field public static final TYPE_ALLOW_SDCARD:Ljava/lang/String; = "sdcard"

.field public static final TYPE_ALLOW_SHOT:Ljava/lang/String; = "SHOT"

.field public static final TYPE_ALLOW_TETHER:Ljava/lang/String; = "tether"

.field public static final TYPE_ALLOW_TIME:Ljava/lang/String; = "time"

.field public static final TYPE_ALLOW_USB:Ljava/lang/String; = "usb"

.field public static final TYPE_ALLOW_VPN:Ljava/lang/String; = "vpn"

.field public static final TYPE_ALLOW_WIFI:Ljava/lang/String; = "wifi"

.field public static final TYPE_CT_MAIN:Ljava/lang/String; = "ct_main"

.field public static final TYPE_RO_APN:Ljava/lang/String; = "ro_apn"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {}, Lmeizu/mdm/MdmPolicyManager;->getProject()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mdm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initConfig(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "allowMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lmeizu/mdm/MdmPolicyManager;->getProject()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 169
    :goto_0
    return-void

    .line 157
    :cond_0
    if-eqz p0, :cond_1

    .line 158
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, "type":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lmeizu/mdm/MdmPolicyManager;->setAllowed(Ljava/lang/String;Z)V

    goto :goto_1

    .line 163
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 164
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lmeizu/mdm/MdmPolicyManager;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 168
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string v3, "persist.sys.mdm.init"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAllowed(Ljava/lang/String;)Z
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 92
    const-string v1, "MdmPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowed type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " project: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmeizu/mdm/MdmPolicyManager;->getProject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lmeizu/mdm/MdmPolicyManager;->getProject()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.sys.mdm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isInited()Z
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lmeizu/mdm/MdmPolicyManager;->getProject()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.sys.mdm.init"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static setAllowed(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "allow"    # Z

    .prologue
    .line 106
    const-string v0, "MdmPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowed type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " allow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " project: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmeizu/mdm/MdmPolicyManager;->getProject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lmeizu/mdm/MdmPolicyManager;->getProject()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mdm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method

.method public static setParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {}, Lmeizu/mdm/MdmPolicyManager;->getProject()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v0, "MdmPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParams type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.mdm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
