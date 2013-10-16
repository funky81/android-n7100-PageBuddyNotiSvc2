.class Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;
.super Ljava/lang/Object;
.source "PageBuddyNoti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PkgEntry"
.end annotation


# instance fields
.field private final mStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;->mStrings:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNoti$PkgEntry;->mStrings:Landroid/util/SparseArray;

    return-object v0
.end method
