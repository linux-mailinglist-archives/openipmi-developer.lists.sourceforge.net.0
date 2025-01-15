Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B83AA12C4A
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jan 2025 21:09:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tY9ho-0005YQ-U1;
	Wed, 15 Jan 2025 20:09:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wei.liu@kernel.org>) id 1tY9hn-0005YI-7d
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 20:09:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MstsdCK7fs6TiHB2aoEPFnlipyR3FTW1b6bpj6iFCyM=; b=Y4uoJLKB2M6gdN+AxTalmPXQly
 XHEhcZMfLKD7pjcAaPIoayhI2g6Ppx8l22fJ6R62M1FRajGp6o6j4HGnqqSSUkhGtF3XIzDu28kZV
 950zHi2gE4mDz6Y2kY/KFYumf/GnJ/1b4JXu68hNaCpzoDSX/548r2cl9/nh1WkHcubc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MstsdCK7fs6TiHB2aoEPFnlipyR3FTW1b6bpj6iFCyM=; b=fPqD/KRmSXBbJYDcjoOHeDZNc4
 mdC3COABQNG/C7sYY169ofwhjHiBrG68Xua+bVt1POENx8S2/ugFzHHZyyOnGSrlrn6Du4KDSV9wp
 KHZCn3cLJ4tOhXmo/pqQxSZTFyfZJhT3b8mfbYi0knnQBPM5we9+qifboxNwghiZYwek=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tY9hn-0005S2-A4 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 20:09:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 41F7BA42164;
 Wed, 15 Jan 2025 20:07:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9A6BC4CED1;
 Wed, 15 Jan 2025 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736971763;
 bh=HKd2BYN0EJzvcqr3Xx3Vueop4tDJh+K1d/v1F43ixq4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mMh7oPcJEGeeR1CbLFNvT6sYm/PkFQwDWfBsQ90yztglpZ3/YZEBVnarQ1AC7szWo
 7TIaoC/5Ds9yuqwsCSv511HrZQrz9DYKTCs5teywBQChtbtwCLdUU15B57wDXyESFf
 A/x13wKP5lj3nSG+MtRjOv+yVwR6g+BlMg1RaQLmyhmo5lqJ4XKmsH9giN7zUcgT0G
 JjdlmRxxbsFDdoqRPMfd7BNNsEMs0mR8Cyqj/oCkFnsbRsTmQflWeOU3bRrVWJH9mq
 wFz46x9sk38sYnuYTKWOXCW+bAgDPbIH7khSU1whNzE/e3Hn5P+2qU6Lun6bUVc/Ly
 lJaxe0RpKwpyA==
Date: Wed, 15 Jan 2025 20:09:21 +0000
To: Joel Granados <joel.granados@kernel.org>
Message-ID: <Z4gV8QNnafm-iCC4@liuwe-devbox-debian-v2>
References: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 10, 2025 at 03:16:08PM +0100,
 Joel Granados wrote:
 [...] > diff --git a/drivers/hv/hv_common.c b/drivers/hv/hv_common.c > index
 7a35c82976e0..9453f0c26f2a 100644 > --- a/drivers/hv/hv_comm [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tY9hn-0005S2-A4
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
From: Wei Liu via Openipmi-developer <openipmi-developer@lists.sourceforge.net>
Reply-To: Wei Liu <wei.liu@kernel.org>
Cc: linux-aio@kvack.org, linux-hyperv@vger.kernel.org,
 Corey Minyard <cminyard@mvista.com>, Kees Cook <kees@kernel.org>,
 "Darrick J. Wong" <djwong@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, keyrings@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-riscv@lists.infradead.org,
 io-uring@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, linux-scsi@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-security-module@vger.kernel.org,
 codalist@coda.cs.cmu.edu, linux-serial@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-trace-kernel@vger.kernel.org,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 apparmor@lists.ubuntu.com, "Steven Rostedt \(Google\)" <rostedt@goodmis.org>,
 linux-raid@vger.kernel.org, ocfs2-devel@lists.linux.dev,
 openipmi-developer@lists.sourceforge.net, intel-xe@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, fsverity@lists.linux.dev,
 linux-nfs@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 Song Liu <song@kernel.org>, kexec@lists.infradead.org,
 Thomas =?iso-8859-1?Q?Wei=DFschuh?= <linux@weissschuh.net>,
 linux-xfs@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jan 10, 2025 at 03:16:08PM +0100, Joel Granados wrote:
[...]
> diff --git a/drivers/hv/hv_common.c b/drivers/hv/hv_common.c
> index 7a35c82976e0..9453f0c26f2a 100644
> --- a/drivers/hv/hv_common.c
> +++ b/drivers/hv/hv_common.c
> @@ -141,7 +141,7 @@ static int sysctl_record_panic_msg = 1;
>   * sysctl option to allow the user to control whether kmsg data should be
>   * reported to Hyper-V on panic.
>   */
> -static struct ctl_table hv_ctl_table[] = {
> +static const struct ctl_table hv_ctl_table[] = {
>  	{
>  		.procname	= "hyperv_record_panic_msg",
>  		.data		= &sysctl_record_panic_msg,

Acked-by: Wei Liu <wei.liu@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
