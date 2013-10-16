.class final Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$1;
.super Ljava/lang/Object;
.source "PageBuddyNotiMgr.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 309
    iget v0, p1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->screen:I

    iget v1, p2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;->screen:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 306
    check-cast p1, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;

    .end local p1
    check-cast p2, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$1;->compare(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiMgr$PageBuddyHotseatItem;)I

    move-result v0

    return v0
.end method
