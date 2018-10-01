.class public Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingQuickSettingsReceiver.java"


# static fields
.field private static final CONTENT_WIFI_CALLING_Tile:Ljava/lang/String; = "Wifi Calling Tile"

.field private static final EXTRAKEY_CONTENT:Ljava/lang/String; = "contentDescription"

.field private static final EXTRAKEY_ICONID:Ljava/lang/String; = "iconId"

.field private static final EXTRAKEY_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field private static final EXTRAKEY_LABEL:Ljava/lang/String; = "label"

.field private static final EXTRAKEY_ONCLICK:Ljava/lang/String; = "onClick"

.field private static final EXTRAKEY_ONCLICK_URI:Ljava/lang/String; = "onClickUri"

.field private static final EXTRAKEY_ONLAUNCH:Ljava/lang/String; = "onLaunch"

.field private static final EXTRAKEY_ONLAUNCH_URI:Ljava/lang/String; = "onLaunchUri"

.field private static final EXTRAKEY_ONLONGCLICK:Ljava/lang/String; = "onLongClick"

.field private static final EXTRAKEY_ONLONGCLICK_URI:Ljava/lang/String; = "onLongClickUri"

.field private static final QS_ONCLICK_ACTION:Ljava/lang/String; = "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

.field private static final QS_ONLAUNCH_ACTION:Ljava/lang/String; = "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

.field private static final SSID_NONE:Ljava/lang/String; = "<unknown ssid>"

.field private static final WIFICALLING_TILE_ACTION:Ljava/lang/String; = "org.codeaurora.qs.tiles.wificallingtile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getConnectedWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "<unknown ssid>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private sendIntentToUpdateQSTile(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "contentDescription"

    const-string/jumbo v2, "Wifi Calling Tile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "iconPackage"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->updateIntentWifiCallingStatus(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->updatePendingIntents(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateIntentWifiCallingStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getConnectedWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_2

    const v0, 0x7f020001

    :goto_2
    const-string/jumbo v3, "label"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "iconId"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x7f020000

    goto :goto_2
.end method

.method private updatePendingIntents(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "onClick"

    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "onClickUri"

    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "onLaunch"

    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "onLaunchUri"

    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "onLongClick"

    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "onLongClickUri"

    const-string/jumbo v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->sendIntentToUpdateQSTile(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v3, "Call is present so ignore the click"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v3, "WFC is not enable by platform ignore the click"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    :goto_2
    invoke-static {p1, v3}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->sendIntentToUpdateQSTile(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received Unexpected Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
