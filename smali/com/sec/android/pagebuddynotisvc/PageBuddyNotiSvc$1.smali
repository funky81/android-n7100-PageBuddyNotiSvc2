.class Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$1;
.super Landroid/content/BroadcastReceiver;
.source "PageBuddyNotiSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;


# direct methods
.method constructor <init>(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$1;->this$0:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    new-instance v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$000()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page_s_pen"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$000()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_earphone"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$000()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contextual_page_audio_dock"

    const/4 v13, 0x0

    invoke-static {v5, v6, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$000()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v13, "contextual_page_roaming"

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;-><init>(IIIII)V

    .line 147
    .local v1, ss:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, action:Ljava/lang/String;
    const-string v2, "PageBuddyNotiSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCPBroadcastReceiver action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCpBitFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$100()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    const-string v2, "penInsert"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 153
    .local v8, bPluged:Z
    if-nez v8, :cond_3

    .line 154
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 155
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->spen_state:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$400(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$100()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 156
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->addContextualPageNotification(I)V

    .line 158
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$176(I)I

    .line 247
    .end local v8           #bPluged:Z
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$1;->this$0:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;

    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$800(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$1;->this$0:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;

    iget-object v3, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$1;->this$0:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;

    const-string v4, "com.sec.android.pagebuddynotisvc.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    #setter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$802(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$1;->this$0:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;

    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$800(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 250
    .local v10, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cp_bit_flag"

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$100()I

    move-result v3

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    return-void

    .line 160
    .end local v10           #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v8       #bPluged:Z
    :cond_3
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->spen_state:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$400(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$100()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 161
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->removeContextualPageNotification(I)V

    .line 163
    :cond_4
    const/4 v2, -0x2

    invoke-static {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$172(I)I

    goto :goto_0

    .line 165
    .end local v8           #bPluged:Z
    :cond_5
    const-string v2, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 166
    const-string v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const/4 v8, 0x1

    .line 167
    .restart local v8       #bPluged:Z
    :goto_1
    if-eqz v8, :cond_8

    .line 168
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 169
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->earphone_state:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$500(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$100()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    .line 170
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->addContextualPageNotification(I)V

    .line 172
    :cond_6
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$176(I)I

    goto/16 :goto_0

    .line 166
    .end local v8           #bPluged:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 174
    .restart local v8       #bPluged:Z
    :cond_8
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->earphone_state:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$500(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$100()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 175
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->removeContextualPageNotification(I)V

    .line 177
    :cond_9
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$172(I)I

    goto/16 :goto_0

    .line 179
    .end local v8           #bPluged:Z
    :cond_a
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 180
    const/4 v8, 0x0

    .line 182
    .restart local v8       #bPluged:Z
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 183
    .local v9, docState:I
    packed-switch v9, :pswitch_data_0

    .line 194
    :goto_2
    :pswitch_0
    if-eqz v8, :cond_c

    .line 195
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 196
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->dock_state:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$600(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$100()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_b

    .line 197
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->addContextualPageNotification(I)V

    .line 199
    :cond_b
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$176(I)I

    goto/16 :goto_0

    .line 188
    :pswitch_1
    const/4 v8, 0x1

    .line 189
    goto :goto_2

    .line 201
    :cond_c
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->dock_state:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$600(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$100()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    .line 202
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->removeContextualPageNotification(I)V

    .line 204
    :cond_d
    const/4 v2, -0x5

    invoke-static {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$172(I)I

    goto/16 :goto_0

    .line 206
    .end local v8           #bPluged:Z
    .end local v9           #docState:I
    :cond_e
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v12

    .line 208
    .local v12, state:Landroid/telephony/ServiceState;
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    .line 231
    .local v11, isRoaming:Z
    if-eqz v11, :cond_10

    .line 232
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 233
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->roaming_state:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$700(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$100()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_f

    .line 234
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->addContextualPageNotification(I)V

    .line 236
    :cond_f
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$176(I)I

    goto/16 :goto_0

    .line 238
    :cond_10
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->roaming_state:I
    invoke-static {v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->access$700(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$100()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_11

    .line 239
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->removeContextualPageNotification(I)V

    .line 241
    :cond_11
    const/16 v2, -0x9

    invoke-static {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$172(I)I

    goto/16 :goto_0

    .line 243
    .end local v11           #isRoaming:Z
    .end local v12           #state:Landroid/telephony/ServiceState;
    :cond_12
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-static {}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;->access$200()Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->checkLastNotiType(Z)V

    goto/16 :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
