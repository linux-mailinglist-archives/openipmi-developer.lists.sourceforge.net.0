Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B08BA8B068
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Apr 2025 08:35:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u4wMa-0004qW-98;
	Wed, 16 Apr 2025 06:35:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u4wMU-0004pw-S4 for openipmi-developer@lists.sourceforge.net;
 Wed, 16 Apr 2025 06:35:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=grfwbSOEy834xZbg/QMpJKoki64uLPccAdJdZeE+oAU=; b=R+tEK5mWRjwczWpp1ZuJjF22sH
 9if1+xWTReGgwwLYT6rQEv3hcopBp2w6zRYOe6RqsvtrW+x4zKPtZOmf10JfsYXcNapfkmD62KUGB
 7WWo2YsPGho61d7RIp80L3B7ocbpjW11CtJv7TS6f0GLZSwL1cRCsRBzUShz2OkaTWOY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=grfwbSOEy834xZbg/QMpJKoki64uLPccAdJdZeE+oAU=; b=kNlv893Q+cOkEUEJvqOKPtE6H+
 YRH216gyS7Zzc8VgmlVg0ukAzaiE2iPrEs2CYFq++BZxILUZbt333WoNJQ9Ec2B42dEbHOFQJaZHI
 mE3CT6YpjSH5GmSnWuJk9kxE5AS34XPOezX70MhM+nevdTleEN97flqjWEGx/M/3V6HY=;
Received: from mgamail.intel.com ([198.175.65.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u4wMF-0000VB-6g for openipmi-developer@lists.sourceforge.net;
 Wed, 16 Apr 2025 06:35:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744785291; x=1776321291;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=S0QN9aMOfNreqfKF8qZmVU0ifAofjrywgk5i4jdOUH0=;
 b=EIa2c2k1GRS/CkDIE1XbKgJLNlA2/2iFSL+GkWEK2Xrhlxhu2OFdt2gq
 SyfSRbaxpk9QhJbsniTxK2lHANe+Ol/r9beHpqNbw1V/YdjVxmRCaZ3UW
 sPvv2CVR8a2wkm8LBDgNyyvWxHFJNEVmJwi9UJdohAESBmwxN4xU6cSYP
 IXtLdMyCkqN4Ww0SjLshkuJ2nJfjpooCfTDw4tlizt5LAD3N3Oy0KEgbE
 t1hdVy7f7CACYzuqiCgxtImbZcjtQd0VACRSEmw5smZ59JUsLm3eldbNI
 caXUOuDMrHfGCAXKNBm3lLjzoZYTMat/linJ+gPSW/Gd/VPDbA+daJ2Mf Q==;
X-CSE-ConnectionGUID: bYIAQaFrSGKV6yCmSVxTsA==
X-CSE-MsgGUID: QdloF4bGT6ujoI2mPi51bA==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46333589"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="46333589"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 23:34:41 -0700
X-CSE-ConnectionGUID: iwAcN+cgT2aLo/lfqdzO8A==
X-CSE-MsgGUID: bnJuy8XJQEGMUMTBUyih9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130111853"
Received: from smile.fi.intel.com ([10.237.72.58])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 23:34:38 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u4wLz-0000000ClZV-173E; Wed, 16 Apr 2025 09:34:35 +0300
Date: Wed, 16 Apr 2025 09:34:35 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <Z_9Pe_l-RrO-9v0u@smile.fi.intel.com>
References: <20250415085156.446430-1-andriy.shevchenko@linux.intel.com>
 <Z_5FV65cyIwiI9rs@mail.minyard.net>
 <Z_5L1J11W-ArXcUe@smile.fi.intel.com>
 <Z_5NDNeDztC1-6vx@smile.fi.intel.com>
 <Z_6uzH9DsWIh-hIz@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z_6uzH9DsWIh-hIz@mail.minyard.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 15, 2025 at 02:09:00PM -0500,
 Corey Minyard wrote:
 > On Tue, Apr 15, 2025 at 03:11:56PM +0300, Andy Shevchenko wrote: > > On
 Tue, Apr 15, 2025 at 03:06:45PM +0300, Andy Shevchenko wrote: > [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.17 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.17 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.17 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u4wMF-0000VB-6g
Subject: Re: [Openipmi-developer] [PATCH v1 1/1] ipmi: si: Cast to smaller
 integer type without warning
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
Cc: Justin Stitt <justinstitt@google.com>, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 Bill Wendling <morbo@google.com>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Apr 15, 2025 at 02:09:00PM -0500, Corey Minyard wrote:
> On Tue, Apr 15, 2025 at 03:11:56PM +0300, Andy Shevchenko wrote:
> > On Tue, Apr 15, 2025 at 03:06:45PM +0300, Andy Shevchenko wrote:
> > > On Tue, Apr 15, 2025 at 06:39:03AM -0500, Corey Minyard wrote:
> > > > On Tue, Apr 15, 2025 at 11:51:56AM +0300, Andy Shevchenko wrote:
> > > > > Debian clang version 19.1.7 is not happy when compiled with
> > > > > `make W=1` (note, CONFIG_WERROR=y is the default):
> > > > > 
> > > > > ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> > > > >   268 |         io.si_type      = (enum si_type)device_get_match_data(&pdev->dev);
> > > > > 
> > > > > Fix this by intermediate cast to the uintptr_t, that makes compiler happy.
> > > > 
> > > > Unless things have changed recently, Linus prefers "unsigned long" per
> > > > https://patchwork.kernel.org/project/linux-hardening/patch/20220616143617.449094-1-Jason@zx2c4.com/#24899749
> > > 
> > > I'm not sure I got your point. That discussion seems irrelevant to me.
> > > They are talking about pointer-as-an-integer cases. Here we already know
> > > that we are passing integer-as-a-pointer and this is the opposite
> > > conversion.
> > > 
> > > > And it would match what is in the match table.
> > > 
> > > Match tables are tend to move to pointers, enum is usually goes to int.
> > > 
> > > > Is that change ok?
> > > 
> > > If you don't like my change, please do yours and consider this as
> > > a bug report that needs to be addressed. I prefer more my solution
> > > as we do that in many places for the exact scenario.
> > 
> > Note, the proper solution to the cases like this is to move to info-like
> > structure and actually operate with the pointers instead of enums, longs, etc.
> > 
> > That's what's slowly moving on in IIO subsystem, for instance.
> 
> Yes, you are right, I'll probably make that change.  I'm not sure
> about the uintptr thing, but I think the right change is to do an info
> structure.  I never liked that code as it was, anyway.

Please do, I will happily test anything you provide as currently this code breaks
`make W=1` builds.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
