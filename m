Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4729AA079AC
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Jan 2025 15:49:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVtqa-0000zF-Uq;
	Thu, 09 Jan 2025 14:49:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=Vo0Q=UB=goodmis.org=rostedt@kernel.org>)
 id 1tVtqZ-0000z9-5p for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 14:49:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hItSMR0IDjkdMJUBRKLD8SPiYiiCgPMm35ASO9oVDjg=; b=mUn7VYrYS8TlGk2o7b36FmRzq8
 qminNAZdCS7uVQ9kHYXYFOIYMWcFTqXEhw/APoHqJaKrb+qk0eNdEInXVtppRN6FtRUWbO6uZa2OG
 z2odDqKDceRXHZcmIqJt7SVfUZJ+dyN6AMztZeGdN2EqxJM/q8Zj9bp/ssFKCFKrxnc4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hItSMR0IDjkdMJUBRKLD8SPiYiiCgPMm35ASO9oVDjg=; b=OnFG8+MB8CFPlzeUvzBZ+TyrDf
 HngNilKBVYg9RCW4I1qPb3q4UrsD+kjngmwgyMUZo8+K7KwhTI6XvpmC2amMxz1TedJ9Ev3xQYLQ7
 uw5jqqT0gNwcfqjzZhcyAoPAtLLACEH0/khDgs/zrJJhwdgPnxCa1zaxYV7POS1oWH6Y=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVtqY-0000zF-Sr for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 14:49:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 861CE5C5A84;
 Thu,  9 Jan 2025 14:48:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35F4DC4CED2;
 Thu,  9 Jan 2025 14:49:04 +0000 (UTC)
Date: Thu, 9 Jan 2025 09:50:37 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Joel Granados <joel.granados@kernel.org>
Message-ID: <20250109095037.0ac3fe09@gandalf.local.home>
In-Reply-To: <20250109-jag-ctl_table_const-v1-1-622aea7230cf@kernel.org>
References: <20250109-jag-ctl_table_const-v1-1-622aea7230cf@kernel.org>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -4.7 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu,
 09 Jan 2025 14:16:39 +0100 Joel Granados <joel.granados@kernel.org>
 wrote: > diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c > index
 2e113f8b13a2..489cbab3d64c 100644 > --- a/kernel/trace/ftrace.c > +++
 b/kernel/trace/ftrace.c
 > @@ -8786,7 +8786,7 @@ ftrace_enable [...] 
 Content analysis details:   (-4.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1tVtqY-0000zF-Sr
Subject: Re: [Openipmi-developer] [PATCH] treewide: const qualify ctl_tables
 where applicable
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
Cc: linux-aio@kvack.org, linux-hyperv@vger.kernel.org,
 Kees Cook <kees@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, keyrings@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-riscv@lists.infradead.org,
 io-uring@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-security-module@vger.kernel.org, codalist@coda.cs.cmu.edu,
 linux-serial@vger.kernel.org, xen-devel@lists.xenproject.org,
 linux-trace-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 apparmor@lists.ubuntu.com, linux-raid@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, openipmi-developer@lists.sourceforge.net,
 intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 fsverity@lists.linux.dev, linux-nfs@vger.kernel.org, kexec@lists.infradead.org,
 Thomas =?UTF-8?B?V2Vpw59zY2h1aA==?= <linux@weissschuh.net>,
 linux-xfs@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, 09 Jan 2025 14:16:39 +0100
Joel Granados <joel.granados@kernel.org> wrote:

> diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
> index 2e113f8b13a2..489cbab3d64c 100644
> --- a/kernel/trace/ftrace.c
> +++ b/kernel/trace/ftrace.c
> @@ -8786,7 +8786,7 @@ ftrace_enable_sysctl(const struct ctl_table *table, int write,
>  	return ret;
>  }
>  
> -static struct ctl_table ftrace_sysctls[] = {
> +static const struct ctl_table ftrace_sysctls[] = {
>  	{
>  		.procname       = "ftrace_enabled",
>  		.data           = &ftrace_enabled,
> diff --git a/kernel/trace/trace_events_user.c b/kernel/trace/trace_events_user.c
> index 17bcad8f79de..97325fbd6283 100644
> --- a/kernel/trace/trace_events_user.c
> +++ b/kernel/trace/trace_events_user.c
> @@ -2899,7 +2899,7 @@ static int set_max_user_events_sysctl(const struct ctl_table *table, int write,
>  	return ret;
>  }
>  
> -static struct ctl_table user_event_sysctls[] = {
> +static const struct ctl_table user_event_sysctls[] = {
>  	{
>  		.procname	= "user_events_max",
>  		.data		= &max_user_events,

Acked-by: Steven Rostedt (Google) <rostedt@goodmis.org> # for kernel/trace/

-- Steve


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
