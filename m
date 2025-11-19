Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 028A1C6DA0E
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Nov 2025 10:15:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K16Xbs2LtWMG/cRjXIkk4zIG7hkxgCxsbvI2h8GwaRg=; b=hjQk51i03hjiBEiJp1EWrj8UUs
	ny2jea89O7lf93hgp2LtY3E2JrTexdLz2GrzMEBmRDOE993LqJgv8+Vghp+oLwFKQGAxd8xCxoGTf
	ptrZZ5t42858iCHKH8PWKqIoAy4LL8tgSDBainhLmMoi8OFW79FATomd2SEdg2aO6im8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vLeHD-0008GO-Rf;
	Wed, 19 Nov 2025 09:14:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vLeHC-0008GH-B0 for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Nov 2025 09:14:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZzkqVKLVXvHsX3806WQYRGd1TseWls5xvAQZTTTqZWE=; b=QIuvGeJReZm/FkWt2lTY4NwV/t
 2CQZoj/SLuX26pCF8LVt5j4FA2VKgPoMHZSC5qd8Ltmp2gtiexkTRpR1TwPOQctpwHDvCCfBBy9IA
 xv6g4fBnPfr49sMgNeipENzRvML6HMeG2e0b0NScSdYmnmS9e9vJCbkJdeYT0MGumCbY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZzkqVKLVXvHsX3806WQYRGd1TseWls5xvAQZTTTqZWE=; b=VXW8wN8uH8n6D2vCG3pfNi4V2P
 Daw/n9KXeNCyksBvJcSjtpsuXfPjg+JuzauGg1vupdINLS5PARtvJHOheZ41k+tk1wAFi+z2MYIVO
 d6VHpdVkIaWk+HRIJcJHC6EMYWdZslSPfX7UOMjzlnF5ntFR/XEh82UteR/3iyTmZ994=;
Received: from mgamail.intel.com ([198.175.65.9])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vLeHB-0006zF-K7 for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Nov 2025 09:14:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763543698; x=1795079698;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=q6da8jLQtnLnim6HyWRfNmg8bV209AFrRAch7qncfbs=;
 b=dAGGmGTPUdMKlMCDes032iyGWuee1HbL5PL1FIoHRWHuEZOByvewdQWP
 NoI5FaXVx2RkvhOhNSq957NZHa0bWG0V6o82kn8qxw852WCxnbkLB8gLI
 JpndsLHtPlwWnQhmZyx64UjU6tufd6W1Io4LHJtiKD/pteqehvlpaHBkZ
 NJ5fiPbNY+dmQPDSAwGyA0JyeFnhiAmEXocSWKG/oqKV0OXqzYC4dijY2
 FISs33vZiF73KfxLVs8aADjrqdA6WHbz/ZDS6VYp+69ytRmJZv5P3NnYV
 Qvb5c+UeXWHFTav/75TIPPkJuPNp6z/wo4uFsmc9ckgueTvdaAuECdoY2 w==;
X-CSE-ConnectionGUID: wybmyJGPS4ycyXx/rf93NA==
X-CSE-MsgGUID: 0ftvotKqQGqJtqTEXCoiDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="88232439"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="88232439"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 01:14:47 -0800
X-CSE-ConnectionGUID: oHYrWS8ATQebFcLjYXGykg==
X-CSE-MsgGUID: DikRyuhjQLyYtee9Ng8YEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="228346786"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.245])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 01:14:41 -0800
Date: Wed, 19 Nov 2025 11:14:38 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Petr Mladek <pmladek@suse.com>
Message-ID: <aR2KfgzV1_3ZzXhT@smile.fi.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-2-andriy.shevchenko@linux.intel.com>
 <aRcnug35DOZ3IGNi@pathway.suse.cz>
 <aRd5HHUBu2ookDv_@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aRd5HHUBu2ookDv_@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Nov 14, 2025 at 08:46:52PM +0200, Andy Shevchenko
 wrote: > On Fri, Nov 14, 2025 at 01:59:38PM +0100, Petr Mladek wrote: > >
 On Thu 2025-11-13 15:32:15, Andy Shevchenko wrote: ... > > I wonder how to
 move forward. I could take the whole patchset via > > printk tree. There
 is no conflict with linux-next at the moment. > > > > It seems that only 3
 patches haven't got any ack yet. [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vLeHB-0006zF-K7
Subject: Re: [Openipmi-developer] [PATCH v3 01/21] lib/vsprintf: Add
 specifier for printing struct timespec64
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

On Fri, Nov 14, 2025 at 08:46:52PM +0200, Andy Shevchenko wrote:
> On Fri, Nov 14, 2025 at 01:59:38PM +0100, Petr Mladek wrote:
> > On Thu 2025-11-13 15:32:15, Andy Shevchenko wrote:

...

> > I wonder how to move forward. I could take the whole patchset via
> > printk tree. There is no conflict with linux-next at the moment.
> > 
> > It seems that only 3 patches haven't got any ack yet. I am going
> > to wait for more feedback and push it later the following week
> > (Wednesday or so) unless anyone complains.
> 
> Sounds good to me!
> 
> But in the worst case all but untagged can be pushed, the rest can go
> to the next cycle.

Just got a "BUILD SUCCESS" from LKP and since we gained even more tags
I think it's ready to go.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
