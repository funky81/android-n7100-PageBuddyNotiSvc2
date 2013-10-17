.class public Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;
.super Ljava/lang/Object;
.source "PageBuddyNotiMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;
    }
.end annotation


# static fields
.field public static final IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;",
            ">;"
        }
    .end annotation
.end field

.field private static MAX_AWARE_HOTSEAT_CELL_COUNT:I

.field private static final STATUS_DOCK_URI:Landroid/net/Uri;

.field private static final STATUS_EARPHONE_URI:Landroid/net/Uri;

.field private static final STATUS_ROAMING_URI:Landroid/net/Uri;

.field private static final STATUS_SPEN_URI:Landroid/net/Uri;

.field private static awareHotseatItemsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static kindCP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCPNotification:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHotseatItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "content://com.samsung.android.providers.context/app_usage/recent/spen"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->STATUS_SPEN_URI:Landroid/net/Uri;

    .line 60
    const-string v0, "content://com.samsung.android.providers.context/app_usage/recent/earphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->STATUS_EARPHONE_URI:Landroid/net/Uri;

    .line 61
    const-string v0, "content://com.samsung.android.providers.context/app_usage/recent/docking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->STATUS_DOCK_URI:Landroid/net/Uri;

    .line 62
    const-string v0, "content://com.samsung.android.providers.context/app_usage/recent/roaming"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->STATUS_ROAMING_URI:Landroid/net/Uri;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->awareHotseatItemsMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    .line 306
    new-instance v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$1;

    invoke-direct {v0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$1;-><init>()V

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mHotseatItems:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;-><init>(Landroid/content/Context;Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;)V

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mCPNotification:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;

    .line 69
    iget-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    .line 70
    invoke-direct {p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->loadHotseatItem()Z

    .line 71
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    return-void
.end method

.method private duplicateCheckOfAwareHotseat(ILjava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .parameter "cnt"
    .parameter
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, awareHotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 316
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;

    iget-object v1, v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    const/4 v1, 0x1

    .line 320
    :goto_1
    return v1

    .line 315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private loadHotseatItem()Z
    .locals 17

    .prologue
    .line 133
    const/4 v8, 0x0

    .line 135
    .local v8, isCSC:Z
    const/4 v10, 0x0

    .line 136
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    .line 138
    .local v11, resParser:Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 139
    .local v3, cscFileChk:Ljava/io/File;
    const/4 v1, 0x0

    .line 142
    .local v1, cscFile:Ljava/io/FileReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 144
    new-instance v4, Ljava/io/File;

    const-string v13, "/system/csc/default_workspace_pagebuddy_cp.xml"

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 145
    .end local v3           #cscFileChk:Ljava/io/File;
    .local v4, cscFileChk:Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_4

    .line 146
    new-instance v2, Ljava/io/FileReader;

    const-string v13, "/system/csc/default_workspace_pagebuddy_cp.xml"

    invoke-direct {v2, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 147
    .end local v1           #cscFile:Ljava/io/FileReader;
    .local v2, cscFile:Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 148
    .local v7, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 149
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 151
    invoke-interface {v10, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 152
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_9

    .line 154
    const/4 v8, 0x1

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .line 176
    .end local v4           #cscFileChk:Ljava/io/File;
    .end local v7           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3       #cscFileChk:Ljava/io/File;
    :goto_0
    :try_start_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 179
    .local v5, depth:I
    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    move-result v13

    if-le v13, v5, :cond_2

    :cond_1
    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    .line 181
    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 195
    :cond_2
    const/4 v13, 0x1

    .line 206
    if-eqz v1, :cond_3

    .line 208
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 215
    .end local v5           #depth:I
    .end local v12           #type:I
    :cond_3
    :goto_2
    return v13

    .line 156
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :cond_4
    :try_start_5
    new-instance v3, Ljava/io/File;

    const-string v13, "/system/csc/default_workspace_cp.xml"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_8

    .line 158
    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_5

    .line 159
    new-instance v2, Ljava/io/FileReader;

    const-string v13, "/system/csc/default_workspace_cp.xml"

    invoke-direct {v2, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 160
    .end local v1           #cscFile:Ljava/io/FileReader;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    :try_start_7
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 161
    .restart local v7       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 162
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 164
    invoke-interface {v10, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 165
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_a

    .line 167
    const/4 v8, 0x1

    move-object v1, v2

    .line 168
    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    goto :goto_0

    .line 169
    .end local v7           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x7f04

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 171
    const-string v13, "favorites"

    invoke-static {v11, v13}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 172
    move-object v10, v11

    goto :goto_0

    .line 184
    .restart local v5       #depth:I
    .restart local v12       #type:I
    :cond_6
    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 188
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v13, "PageBuddyNotiMgr"
     invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .local v9, name:Ljava/lang/String;
    const-string v13, "hotseat"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v8}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->loadHotseatItemContainer(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 192
    :cond_7
    const-string v13, "PageBuddyNotiMgr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid tag 1 <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "> detected while parsing favorites at line "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 197
    .end local v5           #depth:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #type:I
    :catch_0
    move-exception v6

    .line 198
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_9
    const-string v13, "PageBuddyNotiMgr"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 206
    if-eqz v1, :cond_8

    .line 208
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 215
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_8
    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 209
    .restart local v5       #depth:I
    .restart local v12       #type:I
    :catch_1
    move-exception v6

    .line 210
    .local v6, e:Ljava/lang/Exception;
    const-string v14, "PageBuddyNotiMgr"

    const-string v15, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v14, v15, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 209
    .end local v5           #depth:I
    .end local v12           #type:I
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v6

    .line 210
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "PageBuddyNotiMgr"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 200
    .end local v6           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 201
    .local v6, e:Ljava/io/IOException;
    :goto_5
    :try_start_b
    const-string v13, "PageBuddyNotiMgr"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 206
    if-eqz v1, :cond_8

    .line 208
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_4

    .line 209
    :catch_4
    move-exception v6

    .line 210
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "PageBuddyNotiMgr"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 203
    .end local v6           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 204
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :goto_6
    :try_start_d
    const-string v13, "PageBuddyNotiMgr"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 206
    if-eqz v1, :cond_8

    .line 208
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_4

    .line 209
    :catch_6
    move-exception v6

    .line 210
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "PageBuddyNotiMgr"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 206
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_7
    if-eqz v1, :cond_9

    .line 208
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 211
    :cond_9
    :goto_8
    throw v13

    .line 209
    :catch_7
    move-exception v6

    .line 210
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v14, "PageBuddyNotiMgr"

    const-string v15, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v14, v15, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 206
    .end local v3           #cscFileChk:Ljava/io/File;
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_7

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catchall_2
    move-exception v13

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_7

    .end local v1           #cscFile:Ljava/io/FileReader;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    :catchall_3
    move-exception v13

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    goto :goto_7

    .line 203
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_6

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_9
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_6

    .end local v1           #cscFile:Ljava/io/FileReader;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    :catch_a
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    goto :goto_6

    .line 200
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_b
    move-exception v6

    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_5

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_c
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_5

    .end local v1           #cscFile:Ljava/io/FileReader;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    :catch_d
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    goto :goto_5

    .line 197
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_e
    move-exception v6

    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_3

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_f
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto/16 :goto_3

    .end local v1           #cscFile:Ljava/io/FileReader;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    :catch_10
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    goto/16 :goto_3
.end method

.method private loadHotseatItemContainer(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 14
    .parameter "ctx"
    .parameter "parser"
    .parameter "isCSC"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 222
    .local v2, attrs:Landroid/util/AttributeSet;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8
    
    const-string v1, "PageBuddyNotiMgr=>I"
     invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    

    .line 225
    .local v8, startDepth:I
    const/4 v6, 0x0

    .line 226
    .local v6, pkgName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 227
    .local v3, className:Ljava/lang/String;
    const/4 v7, 0x0

    .line 228
    .local v7, screen:Ljava/lang/String;
    const/4 v10, 0x0

    .line 230
    .local v10, x:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, type:I
    const/4 v11, 0x3

    if-ne v9, v11, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v8, :cond_2

    .line 231
    :cond_1
    const/4 v11, 0x1

    if-ne v9, v11, :cond_3

    .line 266
    :cond_2
    return-void

    .line 234
    :cond_3
    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 237
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5


    const-string v1, "PageBuddyNotiMgr=>masuk di  xmlparser.getName()"
     invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    .line 241
    .local v5, name:Ljava/lang/String;
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_4

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, a:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    const-string v12, "packageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

   const-string v1, "PageBuddyNotiMgr=>masuk di  xmlparser.getName()"
     invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v11, 0x0

    const-string v12, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    
       const-string v1, "PageBuddyNotiMgr=>masuk di  xmlparser.getName()"
     invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v11, 0x0

    const-string v12, "screen"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    
       const-string v1, "PageBuddyNotiMgr=>masuk di  xmlparser.getName()"
     invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v11, 0x0

    const-string v12, "x"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

      move-result-object v10

   const-string v1, "PageBuddyNotiMgr=>masuk di  xmlparser.getName()"
     invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_1
    const-string v11, "favorite"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 257
    new-instance v4, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v4, v6, v3, v11, v12}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 258
    .local v4, hotseatItem:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;
    iget-object v11, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v4           #hotseatItem:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;
    :goto_2
    const/4 v11, 0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_0

    .line 263
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 249
    .end local v1           #a:Landroid/content/res/TypedArray;
    :cond_4
    sget-object v11, Lcom/sec/android/pagebuddynotisvc/R$styleable;->Favorite:[I

    invoke-virtual {p1, v2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 250
    .restart local v1       #a:Landroid/content/res/TypedArray;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 253
    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 260
    :cond_5
    const-string v11, "PageBuddyNotiMgr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid tag 2 <"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "> detected while parsing favorites at line "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

.end method


# virtual methods
.method protected addContextualPageNotification(I)V
     .locals 3
    .parameter "cpType"

    .prologue
    .line 90
    const/4 v0, 0x0

    const-string v1, "PageBuddyNotiMgr"
     const-string v2, "PageBuddyNotiMgr masuk ke addcontexttual"
     invoke-static {v1,v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    invoke-virtual {p0, v0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->checkLastNotiType(Z)V

    .line 92
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mCPNotification:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;

    iget-object v1, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notificationSend(Landroid/content/Context;IZ)V

    .line 93
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mCPNotification:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;

    invoke-virtual {v0, p1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->setLastNotificationType(I)V

    .line 95
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method protected checkLastNotiType(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    .line 379
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mCPNotification:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;

    invoke-virtual {v0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->getLastNotificationType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 380
    sget-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mCPNotification:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;

    iget-object v1, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mCPNotification:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;

    invoke-virtual {v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->getLastNotificationType()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notificationSend(Landroid/content/Context;IZ)V

    .line 381
    :cond_0
    return-void
.end method

.method protected getHotseatItems(I)Ljava/util/ArrayList;
    .locals 10
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v1, "PageBuddyNotiMgr"
     const-string v2, "PageBuddyNotiMgr masuk ke gethotseat"
     invoke-static {v1,v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v2, hotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, awareHotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;>;"
    sget-object v7, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #awareHotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 274
    .restart local v1       #awareHotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;>;"
    const/4 v4, 0x0

    .line 275
    .local v4, j:I
    if-nez v1, :cond_1

    move v0, v8

    .line 277
    .local v0, awareHotseatCnt:I
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 278
    iget-object v7, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;

    iget v7, v7, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->cpType:I

    if-ne v7, p1, :cond_3

    .line 279
    if-lez v0, :cond_2

    .line 280
    add-int/lit8 v5, v4, 0x1

    .end local v4           #j:I
    .local v5, j:I
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    .line 283
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget v9, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    if-lt v7, v9, :cond_6

    move v4, v5

    .line 301
    .end local v5           #j:I
    .restart local v4       #j:I
    :cond_0
    :goto_2
    sget-object v7, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 303
    return-object v2

    .line 275
    .end local v0           #awareHotseatCnt:I
    .end local v3           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 286
    .restart local v0       #awareHotseatCnt:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;

    .line 288
    .local v6, tmphotseatItem:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;
    if-lez v4, :cond_4

    sget v7, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    if-ge v4, v7, :cond_4

    iget-object v7, v6, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->className:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v7}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->duplicateCheckOfAwareHotseat(ILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 277
    .end local v6           #tmphotseatItem:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 292
    .restart local v6       #tmphotseatItem:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;
    :cond_4
    iget v9, v6, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->screen:I

    if-nez v1, :cond_5

    move v7, v8

    :goto_4
    add-int/2addr v7, v9

    iput v7, v6, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->screen:I

    .line 293
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget v9, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    if-lt v7, v9, :cond_3

    goto :goto_2

    .line 292
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_4

    .end local v4           #j:I
    .end local v6           #tmphotseatItem:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;
    .restart local v5       #j:I
    :cond_6
    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    goto :goto_3
.end method

.method protected removeAllContextualPageNotification()V
    .locals 6

    .prologue
    .line 126
    sget-object v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 127
    sget-object v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 128
    .local v0, c:Ljava/lang/Integer;
    sget-object v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mCPNotification:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;

    iget-object v3, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f02000d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notificationClear(Landroid/content/Context;II)V

    goto :goto_0

    .line 130
    .end local v0           #c:Ljava/lang/Integer;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected removeContextualPageNotification(I)V
    .locals 6
    .parameter "cpType"

    .prologue
    
    const-string v1, "PageBuddyNotiMgr"
     const-string v2, "PageBuddyNotiMgr masuk ke removecontext"
     invoke-static {v1,v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, nextCpType:I
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 108
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 109
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 112
    const/4 v2, 0x0

    .line 122
    :cond_0
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mCPNotification:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;

    iget-object v4, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f02000d

    add-int/2addr v5, p1

    invoke-virtual {v3, v4, v5, v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notificationClear(Landroid/content/Context;II)V

    .line 123
    return-void

    .line 113
    :cond_1
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 114
    const/4 v2, 0x4

    .line 115
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->kindCP:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 116
    .local v0, c:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public setupContextualAwareHotSeat(Landroid/content/Context;I)V
    .locals 19
    .parameter "context"
    .parameter "mode"

    .prologue
    
        const-string v1, "PageBuddyNotiMgr"
     const-string v2, "PageBuddyNotiMgr masuk ke setupcontext"
     invoke-static {v1,v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, modeUri:Landroid/net/Uri;
    const-string v15, "content://com.samsung.android.providers.context.profile/app_used?device_type="

    .line 327
    .local v15, newUri:Ljava/lang/String;
    const/16 v18, -0x1

    .line 329
    .local v18, version:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.samsung.android.providers.context"

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 331
    .local v16, pInfo:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v16           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 347
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 349
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 350
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v8, awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;>;"
    const/4 v12, 0x0

    .line 353
    .local v12, i:I
    :cond_0
    const/4 v2, 0x2

    move/from16 v0, v18

    if-lt v0, v2, :cond_8

    const-string v2, "id"

    :goto_2
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 354
    .local v14, idxCol_pkg:I
    const/4 v2, 0x2

    move/from16 v0, v18

    if-lt v0, v2, :cond_9

    const-string v2, "sub_id"

    :goto_3
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 355
    .local v13, idxCol_cls:I
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 356
    .local v17, pkgName:Ljava/lang/String;
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 358
    .local v9, clsName:Ljava/lang/String;
    if-eqz v17, :cond_1

    const-string v2, "com.sec.android.app.launcher"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_a

    .line 365
    :cond_1
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    if-lt v12, v2, :cond_0

    .line 367
    :cond_2
    sget-object v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v8           #awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;>;"
    .end local v9           #clsName:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #idxCol_cls:I
    .end local v14           #idxCol_pkg:I
    .end local v17           #pkgName:Ljava/lang/String;
    :goto_5
    if-eqz v11, :cond_3

    .line 375
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_3
    return-void

    .line 338
    .end local v11           #cursor:Landroid/database/Cursor;
    :pswitch_0
    const/4 v2, 0x2

    move/from16 v0, v18

    if-lt v0, v2, :cond_4

    const-string v2, "content://com.samsung.android.providers.context.profile/app_used?device_type=5"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_6
    goto :goto_1

    :cond_4
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->STATUS_SPEN_URI:Landroid/net/Uri;

    goto :goto_6

    .line 340
    :pswitch_1
    const/4 v2, 0x2

    move/from16 v0, v18

    if-lt v0, v2, :cond_5

    const-string v2, "content://com.samsung.android.providers.context.profile/app_used?device_type=0"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_7
    goto/16 :goto_1

    :cond_5
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->STATUS_EARPHONE_URI:Landroid/net/Uri;

    goto :goto_7

    .line 342
    :pswitch_2
    const/4 v2, 0x2

    move/from16 v0, v18

    if-lt v0, v2, :cond_6

    const-string v2, "content://com.samsung.android.providers.context.profile/app_used?device_type=4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_8
    goto/16 :goto_1

    :cond_6
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->STATUS_DOCK_URI:Landroid/net/Uri;

    goto :goto_8

    .line 344
    :pswitch_3
    const/4 v2, 0x2

    move/from16 v0, v18

    if-lt v0, v2, :cond_7

    const-string v2, "content://com.samsung.android.providers.context.profile/app_used?device_type=6"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_9
    goto/16 :goto_1

    :cond_7
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->STATUS_ROAMING_URI:Landroid/net/Uri;

    goto :goto_9

    .line 353
    .restart local v8       #awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;>;"
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #i:I
    :cond_8
    const-string v2, "package_name"

    goto/16 :goto_2

    .line 354
    .restart local v14       #idxCol_pkg:I
    :cond_9
    const-string v2, "class_name"

    goto/16 :goto_3

    .line 362
    .restart local v9       #clsName:Ljava/lang/String;
    .restart local v13       #idxCol_cls:I
    .restart local v17       #pkgName:Ljava/lang/String;
    :cond_a
    new-instance v10, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v10, v0, v9, v12, v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 363
    .local v10, cptemp:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 371
    .end local v8           #awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;>;"
    .end local v9           #clsName:Ljava/lang/String;
    .end local v10           #cptemp:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;
    .end local v12           #i:I
    .end local v13           #idxCol_cls:I
    .end local v14           #idxCol_pkg:I
    .end local v17           #pkgName:Ljava/lang/String;
    :cond_b
    const-string v2, "PageBuddyNotiMgr"

    const-string v4, "[OOPS] Fail to get cursor because DB empty. "

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 332
    .end local v11           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
