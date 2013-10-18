.class public Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;
.super Ljava/lang/Object;
.source "PageBuddyNoti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$1;,
        Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;
    }
.end annotation


# static fields
.field private static MAX_RECOMMENDED_APPS:I

.field private static lastNotiType:I

.field private static mIconDpi:I

.field private static notiIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCpMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

.field private final mPkgCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final nullString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->lastNotiType:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notiIdList:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->MAX_RECOMMENDED_APPS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;)V
    .locals 2
    .parameter "context"
    .parameter "cpMgr"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->nullString:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->mPkgCache:Ljava/util/HashMap;

    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->resetAllNotification(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->MAX_RECOMMENDED_APPS:I

    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->setIconDpi(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->mIconDpi:I

    .line 84
    iput-object p2, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->mCpMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    .line 85
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 379
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 381
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 382
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 385
    const/4 v1, 0x0

    .line 387
    return-object v0

    .line 379
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private getIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 280
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 282
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 283
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 284
    invoke-direct {p0, p1, v2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->getIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 286
    :cond_0
    return-object v0
.end method

.method private getIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "info"

    .prologue
    .line 290
    const/4 v4, 0x0

    .line 291
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v6, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_2

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 292
    .local v1, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 294
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 295
    .local v0, appRes:Landroid/content/res/Resources;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .local v2, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :goto_1
    if-eqz v0, :cond_0

    .line 304
    :try_start_1
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v6

    sget v7, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->mIconDpi:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 308
    :cond_0
    if-nez v4, :cond_1

    .line 309
    invoke-virtual {v1, v5}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 312
    :cond_1
    :goto_2
    return-object v4

    .line 291
    .end local v0           #appRes:Landroid/content/res/Resources;
    .end local v1           #ci:Landroid/content/pm/ComponentInfo;
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 298
    .restart local v0       #appRes:Landroid/content/res/Resources;
    .restart local v1       #ci:Landroid/content/pm/ComponentInfo;
    .restart local v2       #componentName:Landroid/content/ComponentName;
    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 299
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 306
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    invoke-virtual {v1, v5}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 308
    if-nez v4, :cond_1

    .line 309
    invoke-virtual {v1, v5}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 308
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v6

    if-nez v4, :cond_3

    .line 309
    invoke-virtual {v1, v5}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_3
    throw v6
.end method

.method private getImageView(I)I
    .locals 1
    .parameter "num"

    .prologue
    .line 354
    packed-switch p1, :pswitch_data_0

    .line 371
    const v0, 0x7f090002

    .line 375
    .local v0, icon:I
    :goto_0
    return v0

    .line 356
    .end local v0           #icon:I
    :pswitch_0
    const v0, 0x7f090002

    .line 357
    .restart local v0       #icon:I
    goto :goto_0

    .line 359
    .end local v0           #icon:I
    :pswitch_1
    const v0, 0x7f090003

    .line 360
    .restart local v0       #icon:I
    goto :goto_0

    .line 362
    .end local v0           #icon:I
    :pswitch_2
    const v0, 0x7f090004

    .line 363
    .restart local v0       #icon:I
    goto :goto_0

    .line 365
    .end local v0           #icon:I
    :pswitch_3
    const v0, 0x7f090006

    .line 366
    .restart local v0       #icon:I
    goto :goto_0

    .line 368
    .end local v0           #icon:I
    :pswitch_4
    const v0, 0x7f090008

    .line 369
    .restart local v0       #icon:I
    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getTitle(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 445
    const/4 v2, 0x0

    .line 446
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 448
    .local v0, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 449
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 450
    invoke-direct {p0, p1, v1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->getTitle(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    .line 452
    :cond_0
    return-object v2
.end method

.method private getTitle(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "info"

    .prologue
    .line 456
    const/4 v8, 0x0

    .line 457
    .local v8, title:Ljava/lang/String;
    iget-object v9, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_2

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 458
    .local v1, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 460
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 461
    .local v4, labelId:I
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 462
    .local v3, label:Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    .line 463
    iget v4, p2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 464
    if-nez v4, :cond_0

    .line 465
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 466
    if-nez v3, :cond_0

    .line 467
    iget v4, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    .line 468
    if-nez v4, :cond_0

    .line 469
    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 470
    if-nez v3, :cond_0

    .line 471
    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v9, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 477
    :cond_0
    if-eqz v3, :cond_3

    .line 478
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 505
    :cond_1
    :goto_1
    return-object v8

    .line 457
    .end local v1           #ci:Landroid/content/pm/ComponentInfo;
    .end local v3           #label:Ljava/lang/CharSequence;
    .end local v4           #labelId:I
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 479
    .restart local v1       #ci:Landroid/content/pm/ComponentInfo;
    .restart local v3       #label:Ljava/lang/CharSequence;
    .restart local v4       #labelId:I
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    if-eqz v4, :cond_1

    .line 480
    iget-object v10, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 482
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->mPkgCache:Ljava/util/HashMap;

    iget-object v11, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;

    .line 483
    .local v5, pkgEntry:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;
    if-eqz v5, :cond_5

    .line 484
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;->access$000(Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 489
    :goto_2
    iget-object v9, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->nullString:Ljava/lang/String;

    if-ne v8, v9, :cond_6

    .line 490
    const/4 v8, 0x0

    .line 503
    :cond_4
    :goto_3
    monitor-exit v10

    goto :goto_1

    .end local v5           #pkgEntry:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 486
    .restart local v5       #pkgEntry:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;
    :cond_5
    :try_start_1
    new-instance v5, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;

    .end local v5           #pkgEntry:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;
    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;-><init>(Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$1;)V

    .line 487
    .restart local v5       #pkgEntry:Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;
    iget-object v9, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->mPkgCache:Ljava/util/HashMap;

    iget-object v11, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 492
    :cond_6
    if-nez v8, :cond_4

    .line 494
    :try_start_2
    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    .line 495
    .local v7, res:Landroid/content/res/Resources;
    iget v9, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v9, :cond_7

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-direct {p0, p1, v7, v4, v9}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->loadString(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 496
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;->access$000(Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v11

    if-nez v8, :cond_8

    iget-object v9, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->nullString:Ljava/lang/String;

    :goto_5
    invoke-virtual {v11, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 497
    .end local v7           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 500
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    #getter for: Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;->access$000(Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v9

    iget-object v11, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->nullString:Ljava/lang/String;

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 495
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #res:Landroid/content/res/Resources;
    :cond_7
    :try_start_4
    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :cond_8
    move-object v9, v8

    .line 496
    goto :goto_5
.end method

.method private loadString(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "res"
    .parameter "resId"
    .parameter "pkgName"

    .prologue
    .line 510
    const/4 v3, 0x0

    .line 511
    .local v3, text:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 514
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p4}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 521
    :goto_0
    if-nez v3, :cond_0

    .line 522
    :try_start_1
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 524
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 528
    .local v1, newString:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 515
    .end local v1           #newString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v4, "ContextualPageNotification"

    const-string v5, "Could not call getCSCPackageItemText. This should only happen when running on a device without CSC related features"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 525
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 526
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1       #newString:Ljava/lang/String;
    goto :goto_1
.end method

.method private notificationClickEvent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 6
    .parameter "context"
    .parameter "pm"
    .parameter "intent"
    .parameter "num"
    .parameter "notiViews"

    .prologue
    const/4 v5, 0x0

    .line 252
    invoke-direct {p0, p4}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->getImageView(I)I

    move-result v1

    .line 254
    .local v1, iIcon:I
    if-eqz p3, :cond_1

    .line 255
    invoke-virtual {p2, p3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 257
    .local v3, rInfo:Landroid/content/pm/ResolveInfo;
    const/high16 v4, 0x800

    invoke-static {p1, v5, p3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 259
    .local v2, pIntent:Landroid/app/PendingIntent;
    if-eqz v3, :cond_0

    .line 261
    invoke-direct {p0, p1, p3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->getIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 263
    .local v0, bIcon:Landroid/graphics/Bitmap;
    invoke-virtual {p5, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 264
    invoke-virtual {p5, v1, v2}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 265
    invoke-direct {p0, p1, p3}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->getTitle(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v1, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 273
    .end local v0           #bIcon:Landroid/graphics/Bitmap;
    .end local v2           #pIntent:Landroid/app/PendingIntent;
    .end local v3           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 275
    return-object p5

    .line 270
    :cond_1
    const-string v4, "ContextualPageNotification"

    const-string v5, "notificationClickEvent : intent is NULL!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notificationCreate(Landroid/content/Context;III)Landroid/widget/RemoteViews;
    .locals 14
    .parameter "context"
    .parameter "cpType"
    .parameter "icon"
    .parameter "title"

    .prologue
    
 const-string v1, "ContextualPageNotification"
    const-string v2, "notification create"
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I   
    
    .line 170
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x7f03

    invoke-direct {v6, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 172
    .local v6, notiViews:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 173
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 175
    .local v10, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->mCpMgr:Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;->getHotseatItems(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 177
    .local v8, hotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;>;"
    const v1, 0x7f090001

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f070013

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 180
    const/4 v5, 0x0

    .line 181
    .local v5, i:I
    const/4 v5, 0x0

    :goto_0
    sget v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->MAX_RECOMMENDED_APPS:I

    if-ge v5, v1, :cond_1

    .line 182
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;

    iget-object v10, v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->packageName:Ljava/lang/String;

    .line 183
    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 184
    .local v9, intent:Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;

    iget-object v2, v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;

    iget-object v1, v1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->className:Ljava/lang/String;

    invoke-direct {v7, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v7, cpName:Landroid/content/ComponentName;
    if-eqz v9, :cond_0


 const-string v1, "ContextualPageNotification"
    const-string v2, "notification masuk intent"
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I   
    


    .line 189
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v4, launch:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    const/high16 v1, 0x1022

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v1, p0

    move-object v2, p1

    .line 195
    invoke-direct/range {v1 .. v6}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notificationClickEvent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 181
    .end local v4           #launch:Landroid/content/Intent;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    .end local v7           #cpName:Landroid/content/ComponentName;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_1
    const v1, 0x7f090005

    const/16 v2, 0x8

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    const v1, 0x7f090007

    const/16 v2, 0x8

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 212
    return-object v6
.end method

.method private resetAllNotification(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 391
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 393
    .local v1, notiManager:Landroid/app/NotificationManager;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    .line 394
    const v2, 0x7f02000d

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_0
    sget-object v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notiIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 397
    const/4 v2, -0x1

    sput v2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->lastNotiType:I

    .line 398
    const-string v2, "ContextualPageNotification"

    const-string v3, "resetAllNotification : all clear!!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method private setIconDpi(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/16 v2, 0xf0

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 317
    .local v0, appRes:Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 319
    .local v4, sysRes:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 347
    :goto_0
    return v2

    .line 322
    :cond_0
    const v7, 0x7f060004

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 323
    .local v6, targetIconSize:I
    const/high16 v7, 0x105

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 324
    .local v3, stdIconSize:I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 326
    .local v1, dm:Landroid/util/DisplayMetrics;
    if-ne v6, v3, :cond_1

    .line 329
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .local v2, iconDpi:I
    goto :goto_0

    .line 334
    .end local v2           #iconDpi:I
    :cond_1
    int-to-float v7, v6

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v5, v7

    .line 335
    .local v5, targetDPI:I
    const/16 v7, 0x78

    if-gt v5, v7, :cond_2

    .line 336
    const/16 v2, 0x78

    .restart local v2       #iconDpi:I
    goto :goto_0

    .line 337
    .end local v2           #iconDpi:I
    :cond_2
    const/16 v7, 0xa0

    if-gt v5, v7, :cond_3

    .line 338
    const/16 v2, 0xa0

    .restart local v2       #iconDpi:I
    goto :goto_0

    .line 339
    .end local v2           #iconDpi:I
    :cond_3
    if-gt v5, v2, :cond_4

    .line 340
    const/16 v2, 0xf0

    .restart local v2       #iconDpi:I
    goto :goto_0

    .line 341
    .end local v2           #iconDpi:I
    :cond_4
    const/16 v7, 0x140

    if-gt v5, v7, :cond_5

    .line 342
    const/16 v2, 0x140

    .restart local v2       #iconDpi:I
    goto :goto_0

    .line 344
    .end local v2           #iconDpi:I
    :cond_5
    const/16 v2, 0x1e0

    .restart local v2       #iconDpi:I
    goto :goto_0
.end method


# virtual methods
.method protected getLastNotificationType()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->lastNotiType:I

    return v0
.end method

.method public notificationClear(Landroid/content/Context;II)V
    .locals 8
    .parameter "context"
    .parameter "notiID"
    .parameter "nextCpType"

    .prologue
    const/4 v7, 0x1

    const v6, 0x7f02000d

    .line 402
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 404
    .local v2, notiManager:Landroid/app/NotificationManager;
    invoke-virtual {v2, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 406
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notiIdList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notiIdList:Ljava/util/ArrayList;

    sget-object v4, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notiIdList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 409
    :cond_0
    if-eqz p3, :cond_3

    .line 410
    sget v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->lastNotiType:I

    if-eq v3, p3, :cond_2

    .line 411
    sget v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->lastNotiType:I

    sub-int v4, p2, v6

    if-eq v3, v4, :cond_1

    .line 412
    sget v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->lastNotiType:I

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notificationSend(Landroid/content/Context;IZ)V

    .line 414
    :cond_1
    sput p3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->lastNotiType:I

    .line 415
    invoke-virtual {p0, p1, p3, v7}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notificationSend(Landroid/content/Context;IZ)V

    .line 417
    const-string v3, "ContextualPageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notificationClear : move to cpType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 442
    return-void

    .line 421
    :cond_3
    sget v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->lastNotiType:I

    sub-int v4, p2, v6

    if-ne v3, v4, :cond_2

    .line 422
    const/4 v0, -0x1

    .line 423
    .local v0, cpType:I
    const/4 v1, 0x4

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_5

    .line 424
    sub-int v3, p2, v6

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notiIdList:Ljava/util/ArrayList;

    add-int v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 425
    move v0, v1

    .line 423
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 428
    :cond_5
    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    .line 429
    sput v0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->lastNotiType:I

    .line 430
    invoke-virtual {p0, p1, v0, v7}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notificationSend(Landroid/content/Context;IZ)V

    .line 432
    const-string v3, "ContextualPageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notificationClear : move to cpType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->resetAllNotification(Landroid/content/Context;)V

    .line 437
    const-string v3, "ContextualPageNotification"

    const-string v4, "notificationClear : cpType all clear"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notificationSend(Landroid/content/Context;IZ)V
    .locals 17
    .parameter "context"
    .parameter "cpType"
    .parameter "bVisible"

    .prologue
    .line 95
    const v14, 0x7f02000d

    add-int v5, v14, p2

    .line 97
    .local v5, notiID:I
    const-string v14, "ContextualPageNotification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "notificationSend cpType : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Visible = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v14, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 101
    .local v6, notiManager:Landroid/app/NotificationManager;
    const/4 v11, -0x1

    .line 102
    .local v11, tickerIcon:I
    const/4 v12, -0x1

    .line 103
    .local v12, tickerTitle:I
    const/4 v3, -0x1

    .line 104
    .local v3, icon:I
    const/4 v13, -0x1

    .line 105
    .local v13, title:I
    packed-switch p2, :pswitch_data_0

    .line 131
    const v11, 0x7f02000e

    .line 132
    const v12, 0x7f07000a

    .line 133
    const v3, 0x7f020006

    .line 134
    const v13, 0x7f070002

    .line 139
    :goto_0
    new-instance v8, Landroid/app/Notification;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide v0, v15

    invoke-direct {v8, v11, v14, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 143
    .local v8, notify:Landroid/app/Notification;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v7, notificationIntent:Landroid/content/Intent;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v7, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 145
    .local v4, launchIntent:Landroid/app/PendingIntent;
    iput-object v4, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 147
    const/16 v14, 0x10

    iput v14, v8, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notificationCreate(Landroid/content/Context;III)Landroid/widget/RemoteViews;

    move-result-object v9

    .line 150
    .local v9, remoteViews:Landroid/widget/RemoteViews;
    new-instance v10, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v10}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    .line 151
    .local v10, slook:Lcom/samsung/android/sdk/look/Slook;
    if-eqz p3, :cond_0

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_1

    .line 152
    :cond_0
    const/high16 v14, 0x7f09

    const/16 v15, 0x8

    invoke-virtual {v9, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 154
    :cond_1
    iput-object v9, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 156
    iget v14, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x2

    iput v14, v8, Landroid/app/Notification;->flags:I

    .line 157
    const/4 v14, -0x1

    iput v14, v8, Landroid/app/Notification;->priority:I

    .line 159
    invoke-virtual {v6, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 161
    const/4 v6, 0x0

    .line 162
    const/4 v8, 0x0

    .line 163
    const/4 v9, 0x0

    .line 165
    sget-object v14, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notiIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 166
    sget-object v14, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->notiIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    return-void

    .line 107
    .end local v4           #launchIntent:Landroid/app/PendingIntent;
    .end local v7           #notificationIntent:Landroid/content/Intent;
    .end local v8           #notify:Landroid/app/Notification;
    .end local v9           #remoteViews:Landroid/widget/RemoteViews;
    .end local v10           #slook:Lcom/samsung/android/sdk/look/Slook;
    :pswitch_0
    const v11, 0x7f02000d

    .line 108
    const v12, 0x7f070008

    .line 109
    const v3, 0x7f020009

    .line 110
    const v13, 0x7f070001

    .line 111
    goto :goto_0

    .line 113
    :pswitch_1
    const v11, 0x7f02000e

    .line 114
    const v12, 0x7f07000a

    .line 115
    const v3, 0x7f020006

    .line 116
    const v13, 0x7f070002

    .line 117
    goto/16 :goto_0

    .line 119
    :pswitch_2
    const v11, 0x7f02000b

    .line 120
    const v12, 0x7f070012

    .line 121
    const v3, 0x7f020005

    .line 122
    const v13, 0x7f070007

    .line 123
    goto/16 :goto_0

    .line 125
    :pswitch_3
    const v11, 0x7f02000c

    .line 126
    const v12, 0x7f070011

    .line 127
    const v3, 0x7f020008

    .line 128
    const v13, 0x7f070006

    .line 129
    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected setLastNotificationType(I)V
    .locals 0
    .parameter "cpType"

    .prologue
    .line 91
    sput p1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;->lastNotiType:I

    .line 92
    return-void
.end method
