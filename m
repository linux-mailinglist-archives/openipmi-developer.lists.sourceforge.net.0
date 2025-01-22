Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DA3A19156
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Jan 2025 13:26:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1taZny-0003v6-UA;
	Wed, 22 Jan 2025 12:25:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <joel.granados@kernel.org>) id 1taZnx-0003v0-Fx
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 12:25:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GKsy0CgAI7HNXTSqszrGM2CRCHMFPbrE3yv+YuKGi6g=; b=Ood1+tMCE9die6P1Mm5GvhKpd+
 DLL3WEAizReHLVDaOuf6uQvPyeVgCkUL4V1h4KRF1xUQ+z27lZq1y2scVk0TNz4bWb4If1K8im14D
 +NwpMNN9KDVBjouqE9hVRXWAHAeusV0TalP/T8rP32wPkfW/dZxr2kqFXcjItair3P3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GKsy0CgAI7HNXTSqszrGM2CRCHMFPbrE3yv+YuKGi6g=; b=mKCaxGc8C4PHIEPQiYH+GhN3vn
 QrpTPiyUiV3hhT2ZdsAhUS1IK7k0zVk2KQTNTWRIrVOuBH8QitzEquAxndORxuukNUlexrrC5eFGG
 NLklL2nwyxATGaKVjLrGBb951beFD6fOR1mbAaAIL/Hkmm8lCuCWLasEmyVaQ0jmF8cc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1taZnx-0008TT-D4 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 12:25:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8086E5C54FD;
 Wed, 22 Jan 2025 12:25:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DED6C4CED6;
 Wed, 22 Jan 2025 12:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1737548751;
 bh=Xfp892u0X0rMtHWkGD3r2bVHj+FTM/t28M4VtoJ0Wyc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZRnNn+6Tt76019xBirdMVmzRbeL8Q2odMq6HFhgkth9P5ZrYdpErYPlXsxL6Fl3rj
 ZI5VtP10jvH/fQAv6HRDykVpsfGmvb0d/xEWjnDE5tgAnq++jvuWWHT6WYDemhqEh2
 qhtEzGq7/MMx5/wpO74r4FRgEujUuclOLSKI/Yy3NZM6X5dfnqSKY4Ag8uJB7GG8XW
 AQ7J/NzQdgEpLRKLYUKh7jqPAvOBjZZ+gq5nRJ0qTwqiguA+mChUjtx0pX3QTt2bwy
 E0gMyTw1G3DnV5TJGaTuN+E86ySP5PQe5fDrGHlTa+/9p9roru7zJ1Awo7fm8PfyZm
 vQJdRIi7afA0Q==
Date: Wed, 22 Jan 2025 13:25:46 +0100
To: Alexander Gordeev <agordeev@linux.ibm.com>
Message-ID: <nslqrapp4v3rknjgtfk4cg64ha7rewrrg24aslo2e5jmxfwce5@t4chrpuk632k>
References: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
 <Z4+jwDBrZNRgu85S@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z4+jwDBrZNRgu85S@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
X-Spam-Score: -8.2 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 21, 2025 at 02:40:16PM +0100, Alexander Gordeev
 wrote: > On Fri, Jan 10, 2025 at 03:16:08PM +0100, Joel Granados wrote: >
 > Hi Joel, > > > Add the const qualifier to all the ctl_tables in [...] 
 Content analysis details:   (-8.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1taZnx-0008TT-D4
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
From: Joel Granados via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Joel Granados <joel.granados@kernel.org>
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
 Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-xfs@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jan 21, 2025 at 02:40:16PM +0100, Alexander Gordeev wrote:
> On Fri, Jan 10, 2025 at 03:16:08PM +0100, Joel Granados wrote:
> 
> Hi Joel,
> 
> > Add the const qualifier to all the ctl_tables in the tree except for
> > watchdog_hardlockup_sysctl, memory_allocation_profiling_sysctls,
> > loadpin_sysctl_table and the ones calling register_net_sysctl (./net,
> > drivers/inifiniband dirs). These are special cases as they use a
> > registration function with a non-const qualified ctl_table argument or
> > modify the arrays before passing them on to the registration function.
> > 
> > Constifying ctl_table structs will prevent the modification of
> > proc_handler function pointers as the arrays would reside in .rodata.
> > This is made possible after commit 78eb4ea25cd5 ("sysctl: treewide:
> > constify the ctl_table argument of proc_handlers") constified all the
> > proc_handlers.
> 
> I could identify at least these occurences in s390 code as well:
Hey Alexander

Thx for bringing these to my attention. I had completely missed them as
the spatch only deals with ctl_tables outside functions.

Short answer:
These should not be included in the current patch because they are a
different pattern from how sysctl tables are usually used. So I will not
include them.

With that said, I think it might be interesting to look closer at them
as they seem to be complicating the proc_handler (I have to look at them
closer).

I see that they are defining a ctl_table struct within the functions and
just using the data (from the incoming ctl_table) to forward things down
to proc_do{u,}intvec_* functions. This is very odd and I have only seen
it done in order to change the incoming ctl_table (which is not what is
being done here).

I will take a closer look after the merge window and circle back with
more info. Might take me a while as I'm not very familiar with s390
code; any additional information on why those are being used inside the
functions would be helpfull.

Best


> 
> diff --git a/arch/s390/appldata/appldata_base.c b/arch/s390/appldata/appldata_base.c
> index dd7ba7587dd5..9b83c318f919 100644
> --- a/arch/s390/appldata/appldata_base.c
> +++ b/arch/s390/appldata/appldata_base.c
> @@ -204,7 +204,7 @@ appldata_timer_handler(const struct ctl_table *ctl, int write,
>  {
>  	int timer_active = appldata_timer_active;
>  	int rc;
> -	struct ctl_table ctl_entry = {
> +	const struct ctl_table ctl_entry = {
>  		.procname	= ctl->procname,
>  		.data		= &timer_active,
>  		.maxlen		= sizeof(int),
> @@ -237,7 +237,7 @@ appldata_interval_handler(const struct ctl_table *ctl, int write,
>  {
>  	int interval = appldata_interval;
>  	int rc;
> -	struct ctl_table ctl_entry = {
> +	const struct ctl_table ctl_entry = {
>  		.procname	= ctl->procname,
>  		.data		= &interval,
>  		.maxlen		= sizeof(int),
> @@ -269,7 +269,7 @@ appldata_generic_handler(const struct ctl_table *ctl, int write,
>  	struct list_head *lh;
>  	int rc, found;
>  	int active;
> -	struct ctl_table ctl_entry = {
> +	const struct ctl_table ctl_entry = {
>  		.data		= &active,
>  		.maxlen		= sizeof(int),
>  		.extra1		= SYSCTL_ZERO,
> diff --git a/arch/s390/kernel/hiperdispatch.c b/arch/s390/kernel/hiperdispatch.c
> index 7857a7e8e56c..7d0ba16085c1 100644
> --- a/arch/s390/kernel/hiperdispatch.c
> +++ b/arch/s390/kernel/hiperdispatch.c
> @@ -273,7 +273,7 @@ static int hiperdispatch_ctl_handler(const struct ctl_table *ctl, int write,
>  {
>  	int hiperdispatch;
>  	int rc;
> -	struct ctl_table ctl_entry = {
> +	const struct ctl_table ctl_entry = {
>  		.procname	= ctl->procname,
>  		.data		= &hiperdispatch,
>  		.maxlen		= sizeof(int),
> diff --git a/arch/s390/kernel/topology.c b/arch/s390/kernel/topology.c
> index 6691808bf50a..26e50de83d80 100644
> --- a/arch/s390/kernel/topology.c
> +++ b/arch/s390/kernel/topology.c
> @@ -629,7 +629,7 @@ static int topology_ctl_handler(const struct ctl_table *ctl, int write,
>  	int enabled = topology_is_enabled();
>  	int new_mode;
>  	int rc;
> -	struct ctl_table ctl_entry = {
> +	const struct ctl_table ctl_entry = {
>  		.procname	= ctl->procname,
>  		.data		= &enabled,
>  		.maxlen		= sizeof(int),
> @@ -658,7 +658,7 @@ static int polarization_ctl_handler(const struct ctl_table *ctl, int write,
>  {
>  	int polarization;
>  	int rc;
> -	struct ctl_table ctl_entry = {
> +	const struct ctl_table ctl_entry = {
>  		.procname	= ctl->procname,
>  		.data		= &polarization,
>  		.maxlen		= sizeof(int),
> diff --git a/arch/s390/mm/cmm.c b/arch/s390/mm/cmm.c
> index 939e3bec2db7..8e354c90a3dd 100644
> --- a/arch/s390/mm/cmm.c
> +++ b/arch/s390/mm/cmm.c
> @@ -263,7 +263,7 @@ static int cmm_pages_handler(const struct ctl_table *ctl, int write,
>  			     void *buffer, size_t *lenp, loff_t *ppos)
>  {
>  	long nr = cmm_get_pages();
> -	struct ctl_table ctl_entry = {
> +	const struct ctl_table ctl_entry = {
>  		.procname	= ctl->procname,
>  		.data		= &nr,
>  		.maxlen		= sizeof(long),
> @@ -283,7 +283,7 @@ static int cmm_timed_pages_handler(const struct ctl_table *ctl, int write,
>  				   loff_t *ppos)
>  {
>  	long nr = cmm_get_timed_pages();
> -	struct ctl_table ctl_entry = {
> +	const struct ctl_table ctl_entry = {
>  		.procname	= ctl->procname,
>  		.data		= &nr,
>  		.maxlen		= sizeof(long),
> 
> 
> > Best regards,
> > -- 
> > Joel Granados <joel.granados@kernel.org>
> 
> Thanks!

-- 

Joel Granados


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
