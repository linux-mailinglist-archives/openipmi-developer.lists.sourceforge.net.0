Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFEBC6F7E0
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Nov 2025 16:01:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dXokUxXDV2xbgnjfZ3cj57vT4pdK2CiKvDV+IKy9DQA=; b=alLV2X/StWrYWHRNMeg5Z33YcB
	v5G79THAE8nHDY/ycneY+IUVc2EgUBbVLvBJWmwojn7VJ9cmLL0+iKPSHwnTnIDJ7DNbbB5UfITJw
	fjygp0hX7ri8As57H7WMiSJF1l2cNyHiCceAUj9zfN3YQlLhxWbrm4vACxlRZKuFs2hw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vLjg7-0002rC-Ka;
	Wed, 19 Nov 2025 15:01:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vLjg4-0002qm-Uh for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Nov 2025 15:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c96dm6jnr/FKAQIIIFhX4mHsAPLlyTLFSBPsyojdYmM=; b=hHP7hMj5k8aoJm1mi/d7aITSkF
 cWP/DMubY+blJGd8JHkhC7504KDe2zsfOeqCweYeR8/4h6374XuuQOJdeGP6jTduMZrfLaMl2vrDl
 gfYOLWGX2V8cyCCKfC973cLPuxCGVp8xXUYLPD3qwmaimzHRh36IGconvWpbOnMf2a6o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c96dm6jnr/FKAQIIIFhX4mHsAPLlyTLFSBPsyojdYmM=; b=lMKzdvxGNXdiy5J8CEp4KAwvDC
 2uPG71N0qylNnDjEoRgdyi06/3UFMCbPGqA7eZPI0smgrcDK8uu3GHcJcc7/x4vBKp90HHfMdtr1A
 cVN2xZEJ5G72MG1Tx3hzVl/OolVDsjJYNTXF7nhGa/VUOAkVTjVScqTYdt5TeLET/1NE=;
Received: from mgamail.intel.com ([192.198.163.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vLjg4-0003LB-Bo for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Nov 2025 15:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763564460; x=1795100460;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6VLOKmDo4WviGUhM4qQZA7IzCWHn1ZvDUbxiE4MHVTw=;
 b=HkQPKJ09/No1sRV9YE23MwbUa/6/LJijX24O8WIxSR3FTKukUc60fBNi
 MKsNPYV+PNGU0O5RS7buyDKWnv1GK1e0CftlGxdah5DJ1pME5buIITtlm
 kac8ygcUFYttJf4It5rt8HpjQJ0KIVkNsggedVRVinZ2hY4HjPHEjq0+r
 VGGqssWDF4w5QzOYL0SUDCAhGvp8Qv8deO5voOJ+2A6AxC25le31Ujdbf
 JAJFNc4QEA/qCxNh7Iks8IJYWwiMtR1qSr0o0pBsYNdBCnfvqQt9F556p
 wXM+q+l6arhkRRwhzSXJsVBocY5fz9yq7tS3OB4ZrjodWEr3cywx+7JHB g==;
X-CSE-ConnectionGUID: zjPdjFuISvqpjcSvnG5uqg==
X-CSE-MsgGUID: Rc96jR3tTLSvWM43aEmh6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="91085421"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="91085421"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:59:36 -0800
X-CSE-ConnectionGUID: 1p6r6x9uS5u32zRd1eVaZg==
X-CSE-MsgGUID: voIFHWIqQSaE97KThetVqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191329073"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.245])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:59:30 -0800
Date: Wed, 19 Nov 2025 16:59:28 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Petr Mladek <pmladek@suse.com>
Message-ID: <aR3bUMvPCqZr5utj@smile.fi.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <aR3B8ECx9W6F0BV_@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aR3B8ECx9W6F0BV_@pathway.suse.cz>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 19, 2025 at 02:11:12PM +0100, Petr Mladek wrote:
 > On Thu 2025-11-13 15:32:14, Andy Shevchenko wrote: > > Here is the third
 part of the unification time printing in the kernel. > > This ti [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [192.198.163.7 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vLjg4-0003LB-Bo
Subject: Re: [Openipmi-developer] [PATCH v3 00/21] treewide: Introduce %ptS
 for struct timespec64 and convert users
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
Cc: linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, dri-devel@lists.freedesktop.org,
 openipmi-developer@lists.sourceforge.net, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-staging@lists.linux.dev, amd-gfx@lists.freedesktop.org,
 intel-wired-lan@lists.osuosl.org, linux-trace-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 linaro-mm-sig@lists.linaro.org, ceph-devel@vger.kernel.org,
 intel-xe@lists.freedesktop.org, netdev@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <senozhatsky@chromium.org>, linux-media@vger.kernel.org,
 freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 19, 2025 at 02:11:12PM +0100, Petr Mladek wrote:
> On Thu 2025-11-13 15:32:14, Andy Shevchenko wrote:
> > Here is the third part of the unification time printing in the kernel.
> > This time for struct timespec64. The first patch brings a support
> > into printf() implementation (test cases and documentation update
> > included) followed by the treewide conversion of the current users.
> > 
> > Petr, we got like more than a half being Acked, I think if you are okay
> > with this, the patches that have been tagged can be applied.
> > 
> > Note, not everything was compile-tested. Kunit test has been passed, though.
> 
> JFYI, the patchset has been committed into printk/linux.git,
> branch for-6.19-vsprintf-timespec64.
> 
> Note, that I have:
> 
>    + fixed the 19th patch as proposed, see
>      https://lore.kernel.org/all/aR2XAYWTEgMZu_Mx@pathway.suse.cz/
> 
>    + reviewed all patches but I triple checked 7th patch which
>      did not have any ack yet. And I added my Reviewed-by tag
>      there. ;-)
> 
>    + I tried build with allyesconfig. It succeeded. I am not 100%
>      sure that it built all modified sources but...

Thank you!

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
