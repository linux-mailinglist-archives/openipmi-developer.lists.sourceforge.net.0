Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 507F9C58242
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Nov 2025 16:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nWrnV+ht6edRJEl2AVeRf/jS9LSen5L1OEYLlFOeJ/I=; b=IQdmDjSPG8GOuxSAs2GDfzFj6G
	5BMnA0/k+5AP1T2tC8rVcecJfM5GIof5K+i8lZKb1XHEnxweBHePRBxeBbPypG/Kf0wLIQou44xI7
	sNi2/MfUlqUvR1IdpumBo2EFweQ5PHayryqVFi1ypPDEO30xTI6+mfy4TG31l+he9pqw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vJYqc-0002TP-Q5;
	Thu, 13 Nov 2025 15:02:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vJYqb-0002TE-EE for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CT492DISbffbDVzCNEhDrCYUt+BW7al+qim6HTV/YVo=; b=ajrs/Fe7UQ6J4eDVo0iqJR3ZbU
 Ic4X/mBejAj4PB9fJkOlv+vePXw4fyDKl69MUBc/DQQcN91Q35LWK+6aHiQ5D39s17nL0wavUjOGZ
 N/BY6800asS/fV0KH+zDsiAbnk2iyWyIRaVA8PJTtBvXc5Cqg8beVKQ/V7cCFSYXtIm0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CT492DISbffbDVzCNEhDrCYUt+BW7al+qim6HTV/YVo=; b=N2zkuokBYW8sSIHGsujR8JNn3x
 RESE9WLALTSUAWmz0XHcfMw+dOdkTXKzSOOLP92rQG50Tw50qINbrByMBTJ03NfpaRpQia80CwqdC
 fLaP5V+6scAVE7IHdPA6kP+WMqH6iep5/JBdCWcdCtJZhh/BixvH5BqQtpmWJyM0OtcQ=;
Received: from mgamail.intel.com ([198.175.65.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJYqa-0000Jf-PF for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763046173; x=1794582173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+UQGsnSg1BaEGnQW/GmmVLAGeLaVWJuQCcCUScfVp7s=;
 b=iL3wCQPwW8Zo4TEYQnT3bxtn3P63nAPveNmg21Ksxr1qD6uuljmA47ux
 VVgi4VJ2MVYYMbT1/SwqkZ9g5ECNdvWXMnmvv5trgHdRmRanKyHZ9RE6c
 WNDpJhzru1isXZxUIPFZ6Njqo28Nakn61gw4dmdhipkHlCyQH1sDkiwRR
 WXqe48ezTPV4FS8E0mIv4iwu0Z9CL8OwKnevf3EUWO9j8Iwy4serkZ9f4
 LI5Tkv7fWOVwfUN6KkqXf71Yo2cWG1j9YLVMdDg1lQuU6cCKDslW9lOCr
 Ijw3yd5KVo+8XC/344VqYko4lwQqLobMUTllOPheLAPY3IPxy3rW4Rbp8 g==;
X-CSE-ConnectionGUID: BEevDJc1TGKpEvI6T6yeYg==
X-CSE-MsgGUID: F4wGWq7AR+mrmwcV0Rtq4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65054123"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65054123"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:02:43 -0800
X-CSE-ConnectionGUID: Gh81ul90S4eaqrN4Ccmlxg==
X-CSE-MsgGUID: fLgdc4n6TQqGiy/oFGdUSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="220324829"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa001.fm.intel.com with ESMTP; 13 Nov 2025 07:02:29 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 0D0C998; Thu, 13 Nov 2025 16:02:19 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>,
 Max Kellermann <max.kellermann@ionos.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Date: Thu, 13 Nov 2025 15:32:16 +0100
Message-ID: <20251113150217.3030010-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use %ptSp instead of open coded variants to print content
 of struct timespec64 in human readable format. Reviewed-by: Viacheslav Dubeyko
 <Slava.Dubeyko@ibm.com> Signed-off-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
 --- fs/ceph/dir.c | 5 ++--- fs/ceph/inode.c | 49 ++++++++++++++++ [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vJYqa-0000Jf-PF
Subject: [Openipmi-developer] [PATCH v3 02/21] ceph: Switch to use %ptSp
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Xiubo Li <xiubli@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Konrad Dybcio <konradybcio@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Satish Kharat <satishkh@cisco.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Stefan Haberland <sth@linux.ibm.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sean Paul <sean@poorly.run>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sesidhar Baddela <sebaddel@cisco.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Use %ptSp instead of open coded variants to print content of
struct timespec64 in human readable format.

Reviewed-by: Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 fs/ceph/dir.c   |  5 ++---
 fs/ceph/inode.c | 49 ++++++++++++++++---------------------------------
 fs/ceph/xattr.c |  6 ++----
 3 files changed, 20 insertions(+), 40 deletions(-)

diff --git a/fs/ceph/dir.c b/fs/ceph/dir.c
index d18c0eaef9b7..bf50c6e7a029 100644
--- a/fs/ceph/dir.c
+++ b/fs/ceph/dir.c
@@ -2155,7 +2155,7 @@ static ssize_t ceph_read_dir(struct file *file, char __user *buf, size_t size,
 				" rfiles:   %20lld\n"
 				" rsubdirs: %20lld\n"
 				"rbytes:    %20lld\n"
-				"rctime:    %10lld.%09ld\n",
+				"rctime:    %ptSp\n",
 				ci->i_files + ci->i_subdirs,
 				ci->i_files,
 				ci->i_subdirs,
@@ -2163,8 +2163,7 @@ static ssize_t ceph_read_dir(struct file *file, char __user *buf, size_t size,
 				ci->i_rfiles,
 				ci->i_rsubdirs,
 				ci->i_rbytes,
-				ci->i_rctime.tv_sec,
-				ci->i_rctime.tv_nsec);
+				&ci->i_rctime);
 	}
 
 	if (*ppos >= dfi->dir_info_len)
diff --git a/fs/ceph/inode.c b/fs/ceph/inode.c
index 37d3a2477c17..a596cb53f1ac 100644
--- a/fs/ceph/inode.c
+++ b/fs/ceph/inode.c
@@ -879,7 +879,9 @@ void ceph_fill_file_time(struct inode *inode, int issued,
 {
 	struct ceph_client *cl = ceph_inode_to_client(inode);
 	struct ceph_inode_info *ci = ceph_inode(inode);
+	struct timespec64 iatime = inode_get_atime(inode);
 	struct timespec64 ictime = inode_get_ctime(inode);
+	struct timespec64 imtime = inode_get_mtime(inode);
 	int warn = 0;
 
 	if (issued & (CEPH_CAP_FILE_EXCL|
@@ -889,39 +891,26 @@ void ceph_fill_file_time(struct inode *inode, int issued,
 		      CEPH_CAP_XATTR_EXCL)) {
 		if (ci->i_version == 0 ||
 		    timespec64_compare(ctime, &ictime) > 0) {
-			doutc(cl, "ctime %lld.%09ld -> %lld.%09ld inc w/ cap\n",
-			     ictime.tv_sec, ictime.tv_nsec,
-			     ctime->tv_sec, ctime->tv_nsec);
+			doutc(cl, "ctime %ptSp -> %ptSp inc w/ cap\n", &ictime, ctime);
 			inode_set_ctime_to_ts(inode, *ctime);
 		}
 		if (ci->i_version == 0 ||
 		    ceph_seq_cmp(time_warp_seq, ci->i_time_warp_seq) > 0) {
 			/* the MDS did a utimes() */
-			doutc(cl, "mtime %lld.%09ld -> %lld.%09ld tw %d -> %d\n",
-			     inode_get_mtime_sec(inode),
-			     inode_get_mtime_nsec(inode),
-			     mtime->tv_sec, mtime->tv_nsec,
-			     ci->i_time_warp_seq, (int)time_warp_seq);
+			doutc(cl, "mtime %ptSp -> %ptSp tw %d -> %d\n", &imtime, mtime,
+			      ci->i_time_warp_seq, (int)time_warp_seq);
 
 			inode_set_mtime_to_ts(inode, *mtime);
 			inode_set_atime_to_ts(inode, *atime);
 			ci->i_time_warp_seq = time_warp_seq;
 		} else if (time_warp_seq == ci->i_time_warp_seq) {
-			struct timespec64	ts;
-
 			/* nobody did utimes(); take the max */
-			ts = inode_get_mtime(inode);
-			if (timespec64_compare(mtime, &ts) > 0) {
-				doutc(cl, "mtime %lld.%09ld -> %lld.%09ld inc\n",
-				     ts.tv_sec, ts.tv_nsec,
-				     mtime->tv_sec, mtime->tv_nsec);
+			if (timespec64_compare(mtime, &imtime) > 0) {
+				doutc(cl, "mtime %ptSp -> %ptSp inc\n", &imtime, mtime);
 				inode_set_mtime_to_ts(inode, *mtime);
 			}
-			ts = inode_get_atime(inode);
-			if (timespec64_compare(atime, &ts) > 0) {
-				doutc(cl, "atime %lld.%09ld -> %lld.%09ld inc\n",
-				     ts.tv_sec, ts.tv_nsec,
-				     atime->tv_sec, atime->tv_nsec);
+			if (timespec64_compare(atime, &iatime) > 0) {
+				doutc(cl, "atime %ptSp -> %ptSp inc\n", &iatime, atime);
 				inode_set_atime_to_ts(inode, *atime);
 			}
 		} else if (issued & CEPH_CAP_FILE_EXCL) {
@@ -2703,10 +2692,8 @@ int __ceph_setattr(struct mnt_idmap *idmap, struct inode *inode,
 	if (ia_valid & ATTR_ATIME) {
 		struct timespec64 atime = inode_get_atime(inode);
 
-		doutc(cl, "%p %llx.%llx atime %lld.%09ld -> %lld.%09ld\n",
-		      inode, ceph_vinop(inode),
-		      atime.tv_sec, atime.tv_nsec,
-		      attr->ia_atime.tv_sec, attr->ia_atime.tv_nsec);
+		doutc(cl, "%p %llx.%llx atime %ptSp -> %ptSp\n",
+		      inode, ceph_vinop(inode), &atime, &attr->ia_atime);
 		if (!do_sync && (issued & CEPH_CAP_FILE_EXCL)) {
 			ci->i_time_warp_seq++;
 			inode_set_atime_to_ts(inode, attr->ia_atime);
@@ -2780,10 +2767,8 @@ int __ceph_setattr(struct mnt_idmap *idmap, struct inode *inode,
 	if (ia_valid & ATTR_MTIME) {
 		struct timespec64 mtime = inode_get_mtime(inode);
 
-		doutc(cl, "%p %llx.%llx mtime %lld.%09ld -> %lld.%09ld\n",
-		      inode, ceph_vinop(inode),
-		      mtime.tv_sec, mtime.tv_nsec,
-		      attr->ia_mtime.tv_sec, attr->ia_mtime.tv_nsec);
+		doutc(cl, "%p %llx.%llx mtime %ptSp -> %ptSp\n",
+		      inode, ceph_vinop(inode), &mtime, &attr->ia_mtime);
 		if (!do_sync && (issued & CEPH_CAP_FILE_EXCL)) {
 			ci->i_time_warp_seq++;
 			inode_set_mtime_to_ts(inode, attr->ia_mtime);
@@ -2804,13 +2789,11 @@ int __ceph_setattr(struct mnt_idmap *idmap, struct inode *inode,
 
 	/* these do nothing */
 	if (ia_valid & ATTR_CTIME) {
+		struct timespec64 ictime = inode_get_ctime(inode);
 		bool only = (ia_valid & (ATTR_SIZE|ATTR_MTIME|ATTR_ATIME|
 					 ATTR_MODE|ATTR_UID|ATTR_GID)) == 0;
-		doutc(cl, "%p %llx.%llx ctime %lld.%09ld -> %lld.%09ld (%s)\n",
-		      inode, ceph_vinop(inode),
-		      inode_get_ctime_sec(inode),
-		      inode_get_ctime_nsec(inode),
-		      attr->ia_ctime.tv_sec, attr->ia_ctime.tv_nsec,
+		doutc(cl, "%p %llx.%llx ctime %ptSp -> %ptSp (%s)\n",
+		      inode, ceph_vinop(inode), &ictime, &attr->ia_ctime,
 		      only ? "ctime only" : "ignored");
 		if (only) {
 			/*
diff --git a/fs/ceph/xattr.c b/fs/ceph/xattr.c
index 537165db4519..ad1f30bea175 100644
--- a/fs/ceph/xattr.c
+++ b/fs/ceph/xattr.c
@@ -249,8 +249,7 @@ static ssize_t ceph_vxattrcb_dir_rbytes(struct ceph_inode_info *ci, char *val,
 static ssize_t ceph_vxattrcb_dir_rctime(struct ceph_inode_info *ci, char *val,
 					size_t size)
 {
-	return ceph_fmt_xattr(val, size, "%lld.%09ld", ci->i_rctime.tv_sec,
-				ci->i_rctime.tv_nsec);
+	return ceph_fmt_xattr(val, size, "%ptSp", &ci->i_rctime);
 }
 
 /* dir pin */
@@ -307,8 +306,7 @@ static bool ceph_vxattrcb_snap_btime_exists(struct ceph_inode_info *ci)
 static ssize_t ceph_vxattrcb_snap_btime(struct ceph_inode_info *ci, char *val,
 					size_t size)
 {
-	return ceph_fmt_xattr(val, size, "%lld.%09ld", ci->i_snap_btime.tv_sec,
-				ci->i_snap_btime.tv_nsec);
+	return ceph_fmt_xattr(val, size, "%ptSp", &ci->i_snap_btime);
 }
 
 static ssize_t ceph_vxattrcb_cluster_fsid(struct ceph_inode_info *ci,
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
