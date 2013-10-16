.class public Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;
.super Landroid/app/Service;
.source "PageBuddyNotiSvc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;
    }
.end annotation


# static fields
.field private static mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

.field private static mCpBitFlag:I

.field private static final mCpSettingObserver:Landroid/database/ContentObserver;

.field private static mResolver:Landroid/content/ContentResolver;


# instance fields
.field private final ACTION_DOC:Ljava/lang/String;

.field private final ACTION_EARPHONE:Ljava/lang/String;

.field private final ACTION_LOCAL:Ljava/lang/String;

.field private final ACTION_ROAMING:Ljava/lang/String;

.field private final ACTION_SPEN:Ljava/lang/String;

.field mCPBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$2;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpSettingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    const-string v0, "com.samsung.pen.INSERT"

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->ACTION_SPEN:Ljava/lang/String;

    .line 50
    const-string v0, "com.sec.android.contextaware.HEADSET_PLUG"

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->ACTION_EARPHONE:Ljava/lang/String;

    .line 51
    const-string v0, "android.intent.action.DOCK_EVENT"

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->ACTION_DOC:Ljava/lang/String;

    .line 52
    const-string v0, "android.intent.action.SERVICE_STATE"

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->ACTION_ROAMING:Ljava/lang/String;

    .line 53
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->ACTION_LOCAL:Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$1;

    invoke-direct {v0, p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$1;-><init>(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;)V

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    return v0
.end method

.method static synthetic access$172(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    sget v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    and-int/2addr v0, p0

    sput v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    return v0
.end method

.method static synthetic access$176(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    sget v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    or-int/2addr v0, p0

    sput v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    return v0
.end method

.method static synthetic access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mPrefs:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->checkAllContextualPageNotification(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)V

    return-void
.end method

.method private static checkAllContextualPageNotification(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 271
    sget v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 272
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->spen_state:I
    invoke-static {p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$400(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 273
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    invoke-virtual {v0, v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->addContextualPageNotification(I)V

    .line 277
    :cond_0
    :goto_0
    sget v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_1

    .line 278
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->earphone_state:I
    invoke-static {p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$500(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 279
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    invoke-virtual {v0, v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->addContextualPageNotification(I)V

    .line 283
    :cond_1
    :goto_1
    sget v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 284
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->dock_state:I
    invoke-static {p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$600(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 285
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    invoke-virtual {v0, v4}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->addContextualPageNotification(I)V

    .line 289
    :cond_2
    :goto_2
    sget v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 290
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->roaming_state:I
    invoke-static {p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$700(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 291
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    invoke-virtual {v0, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->addContextualPageNotification(I)V

    .line 295
    :cond_3
    :goto_3
    return-void

    .line 275
    :cond_4
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    invoke-virtual {v0, v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->removeContextualPageNotification(I)V

    goto :goto_0

    .line 281
    :cond_5
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    invoke-virtual {v0, v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->removeContextualPageNotification(I)V

    goto :goto_1

    .line 287
    :cond_6
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    invoke-virtual {v0, v4}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->removeContextualPageNotification(I)V

    goto :goto_2

    .line 293
    :cond_7
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    invoke-virtual {v0, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->removeContextualPageNotification(I)V

    goto :goto_3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x0

    .line 299
    new-instance v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;

    sget-object v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "contextual_page"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "contextual_page_s_pen"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "contextual_page_earphone"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "contextual_page_audio_dock"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_roaming"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;-><init>(IIIII)V

    .line 306
    .local v0, ss:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I
    invoke-static {v0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 307
    invoke-static {v0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->checkAllContextualPageNotification(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)V

    .line 311
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 312
    return-void

    .line 309
    :cond_0
    sget-object v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    invoke-virtual {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->removeAllContextualPageNotification()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    const-string v0, "com.sec.android.pagebuddynotisvc.prefs"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mPrefs:Landroid/content/SharedPreferences;

    .line 94
    iget-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cp_bit_flag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    .line 96
    const-string v0, "PageBuddyNotiSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate mCpBitFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpBitFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    .line 99
    new-instance v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    invoke-direct {v0, p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPNotiMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    sget-object v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "contextual_page"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    sget-object v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "contextual_page_s_pen"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    sget-object v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "contextual_page_earphone"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    sget-object v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "contextual_page_audio_dock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    sget-object v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "contextual_page_roaming"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
