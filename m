Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6090A9440A
	for <lists+openipmi-developer@lfdr.de>; Sat, 19 Apr 2025 16:59:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u69eg-0001dj-Dy;
	Sat, 19 Apr 2025 14:58:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u69ee-0001db-Cv for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Apr 2025 14:58:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tqqFsTsMcZuB6EvZMPwIMYy6iicv8kBHMIRBrSk+v1c=; b=fBKEaweqm1ytP6uxrugnxDejuE
 Sd5nIF/0r+UY8DCqI2t7kTitAi7MSPPu/2Cbfn6p+I4V0+3/WlLyAVLw80lenesU81m1Kp8Gbtq9s
 A4S3f6UcynD8OAPIdseQPyv+Y1MXNkq7aYA1ZN11LlHOmWUBTrZaqnprHF9Yurt7fAMk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tqqFsTsMcZuB6EvZMPwIMYy6iicv8kBHMIRBrSk+v1c=; b=enSYNLWIAo0WnR0ZVxKc5ThQzQ
 pe16zDHUfUpoafQ5345e3clhNM6D1rGgOSdPMuO28Q5HCMwwwcxwxJwrm/uZdAT+M+Z8XOv9yvUix
 kVADwloq61Otpl3TAPPpLdlOdKARA5sk/P1j2mAvgJqbYqK23qOnEN7PHg9qALaMGPN8=;
Received: from mgamail.intel.com ([198.175.65.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u69eO-0006lL-8m for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Apr 2025 14:58:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745074717; x=1776610717;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=t1JKrnA/osICaCGxpJ5Img8qs8jepn52cqyYectC4ro=;
 b=BXg7D58B/HGiuAshh2AeQ0Y6L8voUAbxTCBUtyt++kO8UZpptTysZI9Z
 K8lxgrb8F+5zKs9oei5/5ANw5x0PXs2CMJtYQ2MtFmLl64af56AsXACWI
 1oFuvxrcyymW1CS6YxZZxVdNaR5vkLU8LhqUGq5etwDlZGPWB9Z19JEFj
 aEo0hRe4WDElsKXJMYcF7GBDJuVNAv0Nlj4mMknB4tI/c9kcnoVf15B8u
 M2RH/kduS6FLr+rzzQ3xH4snt0gi8D+OV17kEIRdNtYo+OioCBZ9ZMIF7
 PDEp/IVhMNTFfAZEF9ktlPUSdV60Vv894NPYR94unFcyFCKmYVC6Jw6Xg w==;
X-CSE-ConnectionGUID: aYXjBZ7aTAqxov8Gv0tn1g==
X-CSE-MsgGUID: 1uhic3qiT+q6hHTz98HEnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11408"; a="50340333"
X-IronPort-AV: E=Sophos;i="6.15,224,1739865600"; d="scan'208";a="50340333"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2025 07:58:26 -0700
X-CSE-ConnectionGUID: y09sYGf4QqODUfprBLDVMA==
X-CSE-MsgGUID: Q+06b0FMTe+mtijA4d50yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,224,1739865600"; d="scan'208";a="136207842"
Received: from smile.fi.intel.com ([10.237.72.58])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2025 07:58:25 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u69eA-0000000DqPj-0RDZ; Sat, 19 Apr 2025 17:58:22 +0300
Date: Sat, 19 Apr 2025 17:58:21 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aAO6DVh2knSoA20x@smile.fi.intel.com>
References: <20250416183614.3777003-2-corey@minyard.net>
 <aAEkdwD888tW2OUY@smile.fi.intel.com>
 <aAElHft1iVqZbhBA@smile.fi.intel.com>
 <aAFqcaFGOoOVRpWO@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aAFqcaFGOoOVRpWO@mail.minyard.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 17, 2025 at 03:54:09PM -0500,
 Corey Minyard wrote:
 > On Thu, Apr 17, 2025 at 06:58:21PM +0300, Andy Shevchenko wrote: > > On
 Thu, Apr 17, 2025 at 06:55:35PM +0300, Andy Shevchenko wrote: > [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.15 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.15 listed in sa-trusted.bondedsender.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u69eO-0006lL-8m
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi:si: Move SI type
 information into an info structure
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
Cc: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Apr 17, 2025 at 03:54:09PM -0500, Corey Minyard wrote:
> On Thu, Apr 17, 2025 at 06:58:21PM +0300, Andy Shevchenko wrote:
> > On Thu, Apr 17, 2025 at 06:55:35PM +0300, Andy Shevchenko wrote:
> > > On Wed, Apr 16, 2025 at 01:36:15PM -0500, Corey Minyard wrote:
> > > > Andy reported:
> > > > 
> > > > Debian clang version 19.1.7 is not happy when compiled with
> > > > `make W=1` (note, CONFIG_WERROR=y is the default):
> > > > 
> > > > ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type'
> > > > +from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> > 
> > It seems you copied'n'pasted from narrow screen. The lines should kept as is
> > (as long as they are) without an additional line break and plus sign.
> 
> Yep.  Thanks Andy.  Should this wait for for 6.16, or would 6.15 be
> better?

I prefer v6.15, but it's not that critical, and v6.16 would work. So, up to you.

> > > >   268 |         io.si_type      = (enum
> > > > +si_type)device_get_match_data(&pdev->dev);
> > 
> > Ditto.
> > 
> > > > The IPMI SI type is an enum that was cast into a pointer that was
> > > > then cast into an enum again.  That's not the greatest style, so
> > > > instead create an info structure to hold the data and use that.
> > > 
> > > Tested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
