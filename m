Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD31A89D3D
	for <lists+openipmi-developer@lfdr.de>; Tue, 15 Apr 2025 14:12:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u4f9S-00052Q-5a;
	Tue, 15 Apr 2025 12:12:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u4f9Q-00052K-BQ for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Apr 2025 12:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VpB/Vmu5lueSxXDDPSLXBUL3NWzqk8peZAN00Xp6qmE=; b=N/8yZS3Kc0328ZhmN5Bl/AAb30
 4OxOo3b6ZqcixHjRXJUBpMFMAYX+sdfDjyDDq8oodWO8lQacq415pGzBdvH67eoMNBb8PIYWuRtho
 IQ/FF6GDah3GL/oTFR1OtFoMxDr8ws3tSyRu7jMTB3p61/wOnuyVV4GIN9zHPtj4U7mo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VpB/Vmu5lueSxXDDPSLXBUL3NWzqk8peZAN00Xp6qmE=; b=Nj/nvHeZ6GstcdofaoYPMXuRqx
 2BsIjwALsZ6gUMRu/JizfwF2+ZL8Ke2RV77tI4DY7sxMFlsxhKrInG71PqJV5YS8qXRX9Sz9XlPW7
 LkgcrYwqBlHQXIWJ37qEgV47yMTHMqKXtcI+Vjms5N+DbuU2KU+UTaLeMtPI0RLo9O1o=;
Received: from mgamail.intel.com ([192.198.163.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u4f9A-000659-Mt for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Apr 2025 12:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744719132; x=1776255132;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0hYUve0xkE/hQHXWHLhI5xgSlQ8xtJMN237cyCHu2cw=;
 b=YDHMe4g+I0z8T5dbOR4Z9bzDcMsMbQZGk6RXSCbqU45yiMvQzlr+YXBc
 zBuk9+fE3bsCfrN63pwGrIZ7kBelrNtnbnGpJ8M3E8ndaUqxBUaaiP1oX
 hMz6A9QITbko1+T5TSIRgeZUom6WkECSspR7qnm3VHJRBZtqqRdLgeQef
 oVPsDCa6aUw3FdrnyYG2DufvFkjbB0tm8zqagKR/Jpb+W//Bs3/y0QpVP
 I8hOrBDXCLkX65Pv55PQLCdSTCG9NZAY1bGwjpqXRTAjkgj2EI+8FWb1B
 pLC3IOoLuMbSOjPxOn55UozqXxfTlzGN+cPyhn+eRljfWPD1/apMEJPtR A==;
X-CSE-ConnectionGUID: GKRvEoGsTRW3Gf283yiI7Q==
X-CSE-MsgGUID: BftpS1qXTAWezj63kvdsyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="45458682"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="45458682"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 05:12:01 -0700
X-CSE-ConnectionGUID: si6E1ClKTem4PZIaad4ZSA==
X-CSE-MsgGUID: u+ZNaiIjTsSSyRqFj1oGwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="131001182"
Received: from smile.fi.intel.com ([10.237.72.58])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 05:11:59 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u4f8u-0000000CXRT-1mVG; Tue, 15 Apr 2025 15:11:56 +0300
Date: Tue, 15 Apr 2025 15:11:56 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <Z_5NDNeDztC1-6vx@smile.fi.intel.com>
References: <20250415085156.446430-1-andriy.shevchenko@linux.intel.com>
 <Z_5FV65cyIwiI9rs@mail.minyard.net>
 <Z_5L1J11W-ArXcUe@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z_5L1J11W-ArXcUe@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 15, 2025 at 03:06:45PM +0300, Andy Shevchenko
 wrote: > On Tue, Apr 15, 2025 at 06:39:03AM -0500, Corey Minyard wrote: >
 > On Tue, Apr 15, 2025 at 11:51:56AM +0300, Andy Shevchenko wrote: > [...]
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.198.163.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.18 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.18 listed in sa-trusted.bondedsender.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u4f9A-000659-Mt
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

On Tue, Apr 15, 2025 at 03:06:45PM +0300, Andy Shevchenko wrote:
> On Tue, Apr 15, 2025 at 06:39:03AM -0500, Corey Minyard wrote:
> > On Tue, Apr 15, 2025 at 11:51:56AM +0300, Andy Shevchenko wrote:
> > > Debian clang version 19.1.7 is not happy when compiled with
> > > `make W=1` (note, CONFIG_WERROR=y is the default):
> > > 
> > > ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> > >   268 |         io.si_type      = (enum si_type)device_get_match_data(&pdev->dev);
> > > 
> > > Fix this by intermediate cast to the uintptr_t, that makes compiler happy.
> > 
> > Unless things have changed recently, Linus prefers "unsigned long" per
> > https://patchwork.kernel.org/project/linux-hardening/patch/20220616143617.449094-1-Jason@zx2c4.com/#24899749
> 
> I'm not sure I got your point. That discussion seems irrelevant to me.
> They are talking about pointer-as-an-integer cases. Here we already know
> that we are passing integer-as-a-pointer and this is the opposite
> conversion.
> 
> > And it would match what is in the match table.
> 
> Match tables are tend to move to pointers, enum is usually goes to int.
> 
> > Is that change ok?
> 
> If you don't like my change, please do yours and consider this as
> a bug report that needs to be addressed. I prefer more my solution
> as we do that in many places for the exact scenario.

Note, the proper solution to the cases like this is to move to info-like
structure and actually operate with the pointers instead of enums, longs, etc.

That's what's slowly moving on in IIO subsystem, for instance.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
