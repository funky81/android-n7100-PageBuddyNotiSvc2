.class final Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$2;
.super Landroid/database/ContentObserver;
.source "PageBuddyNotiSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    const/4 v7, 0x0

    .line 257
    new-instance v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$000()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$000()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_s_pen"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page_earphone"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$000()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_audio_dock"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$000()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contextual_page_roaming"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;-><init>(IIIII)V

    .line 263
    .local v0, ss:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I
    invoke-static {v0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 264
    #calls: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->checkAllContextualPageNotification(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)V
    invoke-static {v0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$900(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)V

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->removeAllContextualPageNotification()V

    goto :goto_0
.end method
