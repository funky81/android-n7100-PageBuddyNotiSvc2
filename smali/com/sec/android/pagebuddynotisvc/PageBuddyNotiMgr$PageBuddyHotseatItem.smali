.class public Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;
.super Ljava/lang/Object;
.source "PageBuddyNotiMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageBuddyHotseatItem"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public cpType:I

.field public packageName:Ljava/lang/String;

.field public screen:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "packageName"
    .parameter "className"
    .parameter "screen"
    .parameter "cpType"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->packageName:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->className:Ljava/lang/String;

    .line 85
    iput p3, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->screen:I

    .line 86
    iput p4, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->cpType:I

    .line 87
    return-void
.end method
