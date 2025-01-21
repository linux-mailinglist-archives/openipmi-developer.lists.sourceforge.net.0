Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B91A17F25
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Jan 2025 14:49:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1taEch-0000wD-MY;
	Tue, 21 Jan 2025 13:48:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <agordeev@linux.ibm.com>) id 1taEUq-0006d0-Tv
 for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Jan 2025 13:40:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1XuHjAhe+6crgeyPxGiThULHkHEa/QwDtL3yiBvZqn4=; b=KssSlNNE4lDmkQjHWI7fE/Pj8W
 QXAtCnXO2KMTHDglD44vmfaMYCxqCYYQktDwQhH20j6p37gRpy+4LYff7FVbWL2rdRBhdjHu024iw
 b9rX7/qIlanHKBWxtv5UUoVPfn4ABt6ayxVKsOY3cnJFwpev6S6YjPFwmf+jQsdjk5hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1XuHjAhe+6crgeyPxGiThULHkHEa/QwDtL3yiBvZqn4=; b=jQkA4Nw7/mO8ebcgPhcdoXK1SB
 LZFlX1V1/lTyXW6SCUiUSfTgwZlbqOM+3pJy9NToVqglwN2qXCPIyDY1yUdXNkWb9VOpC3mGQzrc6
 IY3LmotfCmgmCdzUfUgcr+WUY6rXRKiwrMqk5bppgQzCzBwG9zi26MVFXfc5V9Snhivc=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1taEUq-0007cf-4o for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Jan 2025 13:40:48 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50LBcWDl021758;
 Tue, 21 Jan 2025 13:40:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=pp1; bh=1XuHjAhe+6crgeyPxGiThULHkHEa/Q
 wDtL3yiBvZqn4=; b=XXJc1fjY1LEte8uWYOHY0rVlVq4wX9PCcoXpIbn1EYs9EL
 OD4/8pPTNQ9wGah7zwpokGzeZLvKhyS2XwyswSQynQSvx4Pq0nVXT5v0PMm1KdzN
 F6FmU2v9zN3MF0dGtVIr8337iz/SeaELL+AkChcaIBTAfjVK9Q1TKCVQHZUYF4b8
 lkEmavTZcGG7bcRDLLuw9HOFrKWm+iyEw+rBb1iDcR2ksQakFyzbWZB9l+0n9NZH
 7bFXS3CXhWJ3qAfxFUQeEb9d90I2xBmDXS8qIuY9SsKjzzFL1VStL4eYIhJR/WhB
 kacwVPn3TvuRt93neu9S0HZxZA9oxnhjkLM3qkFg==
Received: from ppma11.dal12v.mail.ibm.com
 (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44a1n9b0sf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Jan 2025 13:40:21 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
 by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50LAtOsq021012;
 Tue, 21 Jan 2025 13:40:19 GMT
Received: from smtprelay01.fra02v.mail.ibm.com ([9.218.2.227])
 by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 448sb1b14q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Jan 2025 13:40:19 +0000
Received: from smtpav07.fra02v.mail.ibm.com (smtpav07.fra02v.mail.ibm.com
 [10.20.54.106])
 by smtprelay01.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50LDeIWj60031254
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Jan 2025 13:40:18 GMT
Received: from smtpav07.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 25C3B2004B;
 Tue, 21 Jan 2025 13:40:18 +0000 (GMT)
Received: from smtpav07.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7FD1A20040;
 Tue, 21 Jan 2025 13:40:17 +0000 (GMT)
Received: from li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com (unknown
 [9.155.204.135])
 by smtpav07.fra02v.mail.ibm.com (Postfix) with ESMTPS;
 Tue, 21 Jan 2025 13:40:17 +0000 (GMT)
Date: Tue, 21 Jan 2025 14:40:16 +0100
To: Joel Granados <joel.granados@kernel.org>
Message-ID: <Z4+jwDBrZNRgu85S@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
References: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: mWjZL4Eizm--6YwnTI2RlL8astD0-e-i
X-Proofpoint-GUID: mWjZL4Eizm--6YwnTI2RlL8astD0-e-i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-21_05,2025-01-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0
 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1011 priorityscore=1501
 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501210112
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 10, 2025 at 03:16:08PM +0100,
 Joel Granados wrote:
 Hi Joel, > Add the const qualifier to all the ctl_tables in the tree except
 for > watchdog_hardlockup_sysctl, memory_allocation_profiling_sysctls, >
 loadpin_sysctl_table and the ones calling register_net_sysct [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1taEUq-0007cf-4o
X-Mailman-Approved-At: Tue, 21 Jan 2025 13:48:53 +0000
Subject: Re: [Openipmi-developer] [PATCH v2] treewide: const qualify
 ctl_tables where applicable
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
From: Alexander Gordeev via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Alexander Gordeev <agordeev@linux.ibm.com>
Cc: linux-aio@kvack.org, linux-hyperv@vger.kernel.org,
 Corey Minyard <cminyard@mvista.com>, Kees Cook <kees@kernel.org>,
 "Darrick J. Wong" <djwong@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, keyrings@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-riscv@lists.infradead.org,
 io-uring@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-security-module@vger.kernel.org, codalist@coda.cs.cmu.edu,
 linux-serial@vger.kernel.org, xen-devel@lists.xenproject.org,
 linux-trace-kernel@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
 "Steven Rostedt \(Google\)" <rostedt@goodmis.org>, linux-raid@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, openipmi-developer@lists.sourceforge.net,
 intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 fsverity@lists.linux.dev, linux-nfs@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, Song Liu <song@kernel.org>,
 kexec@lists.infradead.org,
 Thomas =?iso-8859-1?Q?Wei=DFschuh?= <linux@weissschuh.net>,
 linux-xfs@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jan 10, 2025 at 03:16:08PM +0100, Joel Granados wrote:

Hi Joel,

> Add the const qualifier to all the ctl_tables in the tree except for
> watchdog_hardlockup_sysctl, memory_allocation_profiling_sysctls,
> loadpin_sysctl_table and the ones calling register_net_sysctl (./net,
> drivers/inifiniband dirs). These are special cases as they use a
> registration function with a non-const qualified ctl_table argument or
> modify the arrays before passing them on to the registration function.
> 
> Constifying ctl_table structs will prevent the modification of
> proc_handler function pointers as the arrays would reside in .rodata.
> This is made possible after commit 78eb4ea25cd5 ("sysctl: treewide:
> constify the ctl_table argument of proc_handlers") constified all the
> proc_handlers.

I could identify at least these occurences in s390 code as well:

diff --git a/arch/s390/appldata/appldata_base.c b/arch/s390/appldata/appldata_base.c
index dd7ba7587dd5..9b83c318f919 100644
--- a/arch/s390/appldata/appldata_base.c
+++ b/arch/s390/appldata/appldata_base.c
@@ -204,7 +204,7 @@ appldata_timer_handler(const struct ctl_table *ctl, int write,
 {
 	int timer_active = appldata_timer_active;
 	int rc;
-	struct ctl_table ctl_entry = {
+	const struct ctl_table ctl_entry = {
 		.procname	= ctl->procname,
 		.data		= &timer_active,
 		.maxlen		= sizeof(int),
@@ -237,7 +237,7 @@ appldata_interval_handler(const struct ctl_table *ctl, int write,
 {
 	int interval = appldata_interval;
 	int rc;
-	struct ctl_table ctl_entry = {
+	const struct ctl_table ctl_entry = {
 		.procname	= ctl->procname,
 		.data		= &interval,
 		.maxlen		= sizeof(int),
@@ -269,7 +269,7 @@ appldata_generic_handler(const struct ctl_table *ctl, int write,
 	struct list_head *lh;
 	int rc, found;
 	int active;
-	struct ctl_table ctl_entry = {
+	const struct ctl_table ctl_entry = {
 		.data		= &active,
 		.maxlen		= sizeof(int),
 		.extra1		= SYSCTL_ZERO,
diff --git a/arch/s390/kernel/hiperdispatch.c b/arch/s390/kernel/hiperdispatch.c
index 7857a7e8e56c..7d0ba16085c1 100644
--- a/arch/s390/kernel/hiperdispatch.c
+++ b/arch/s390/kernel/hiperdispatch.c
@@ -273,7 +273,7 @@ static int hiperdispatch_ctl_handler(const struct ctl_table *ctl, int write,
 {
 	int hiperdispatch;
 	int rc;
-	struct ctl_table ctl_entry = {
+	const struct ctl_table ctl_entry = {
 		.procname	= ctl->procname,
 		.data		= &hiperdispatch,
 		.maxlen		= sizeof(int),
diff --git a/arch/s390/kernel/topology.c b/arch/s390/kernel/topology.c
index 6691808bf50a..26e50de83d80 100644
--- a/arch/s390/kernel/topology.c
+++ b/arch/s390/kernel/topology.c
@@ -629,7 +629,7 @@ static int topology_ctl_handler(const struct ctl_table *ctl, int write,
 	int enabled = topology_is_enabled();
 	int new_mode;
 	int rc;
-	struct ctl_table ctl_entry = {
+	const struct ctl_table ctl_entry = {
 		.procname	= ctl->procname,
 		.data		= &enabled,
 		.maxlen		= sizeof(int),
@@ -658,7 +658,7 @@ static int polarization_ctl_handler(const struct ctl_table *ctl, int write,
 {
 	int polarization;
 	int rc;
-	struct ctl_table ctl_entry = {
+	const struct ctl_table ctl_entry = {
 		.procname	= ctl->procname,
 		.data		= &polarization,
 		.maxlen		= sizeof(int),
diff --git a/arch/s390/mm/cmm.c b/arch/s390/mm/cmm.c
index 939e3bec2db7..8e354c90a3dd 100644
--- a/arch/s390/mm/cmm.c
+++ b/arch/s390/mm/cmm.c
@@ -263,7 +263,7 @@ static int cmm_pages_handler(const struct ctl_table *ctl, int write,
 			     void *buffer, size_t *lenp, loff_t *ppos)
 {
 	long nr = cmm_get_pages();
-	struct ctl_table ctl_entry = {
+	const struct ctl_table ctl_entry = {
 		.procname	= ctl->procname,
 		.data		= &nr,
 		.maxlen		= sizeof(long),
@@ -283,7 +283,7 @@ static int cmm_timed_pages_handler(const struct ctl_table *ctl, int write,
 				   loff_t *ppos)
 {
 	long nr = cmm_get_timed_pages();
-	struct ctl_table ctl_entry = {
+	const struct ctl_table ctl_entry = {
 		.procname	= ctl->procname,
 		.data		= &nr,
 		.maxlen		= sizeof(long),


> Best regards,
> -- 
> Joel Granados <joel.granados@kernel.org>

Thanks!


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
