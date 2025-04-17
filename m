Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40168A9221D
	for <lists+openipmi-developer@lfdr.de>; Thu, 17 Apr 2025 17:59:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u5Rdc-0005Ad-6G;
	Thu, 17 Apr 2025 15:58:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u5Rdb-0005AQ-2H for openipmi-developer@lists.sourceforge.net;
 Thu, 17 Apr 2025 15:58:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uvbiQSuK5Ak4V6iS7ATRXRO7HqqCSXlQtRPZZ0YX85g=; b=R3tnt+qLA0fgLNR0tQ5jfvvkjA
 wu5EvLeshrkUcUQGYnvj4a+BwJPtbjzlhyTuSXiuuHDcKKkPip6aKSHbXeJaP1GgQz+WCNE2c46MA
 pAjXxyuXXNq6Ltjzd5lq6g+xnJIugxXYOL8lsUWyIxGL4ZTZOPzqfHdv4ZYdsGTAtpAA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uvbiQSuK5Ak4V6iS7ATRXRO7HqqCSXlQtRPZZ0YX85g=; b=UZIlKEu36teOdTJkgQJsJJD1DV
 U6RjFYaJSijNLr0PHKwu91RIXEna2Iiu4aeNljoh+W/PctP3p1ok/GpfuLgeW86rgGZLy6gAYvZAV
 zQpLL0VNso7g2S4uTTCl0JpL6XQeucvtQX7NSpkVPS6wdq9JxSAIm2zK5MVQGgG624kw=;
Received: from mgamail.intel.com ([198.175.65.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u5RdM-00048A-4r for openipmi-developer@lists.sourceforge.net;
 Thu, 17 Apr 2025 15:58:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744905516; x=1776441516;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/Y3bokVYQRr9U0KLVD6KUiYUrvGNUOrM3fPWG6N6ME8=;
 b=MasfyhU+1xduU74aGjya+rDphSD1FWxtHLxVN5+Obn/BSW6TCZ+h1j6N
 qpaWsLlyzVkXk8AJlAnUa3KvCBn/4vyqfx56regNE4B/0QwEpCzhjgGHr
 3ifxUJh+WYXTN1nAHxFRc5WW4mXf6i3OAUtiz638QZIBtSObOzsbZ+4FT
 SyM0deXrrcOnDhqdqepidt7i4BhAfLbQvrRK3JCl/YK4LNArWMtNhw+zf
 9rn5oBKUJpoeG1ZyheRnoQ0Ogd5bWf0YNRzlbXBkYQl7JXeoIY0WttTqV
 bdymznh1U8PHFLJErMWCahiam6dHK/PWjzl2BjV9PNsTYF3OCn3oJtD+D w==;
X-CSE-ConnectionGUID: +RmiyEhrRBerp4m6Z5Iydw==
X-CSE-MsgGUID: CCgqitHeQsO/N75/SgH5Tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="46396742"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="46396742"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 08:58:25 -0700
X-CSE-ConnectionGUID: HTI50lY9Rqegp98YD26nfA==
X-CSE-MsgGUID: n3C2rWhNS8u4c9nV/lELwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="161805549"
Received: from smile.fi.intel.com ([10.237.72.58])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 08:58:24 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u5Rd7-0000000DFE0-3udS; Thu, 17 Apr 2025 18:58:21 +0300
Date: Thu, 17 Apr 2025 18:58:21 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aAElHft1iVqZbhBA@smile.fi.intel.com>
References: <20250416183614.3777003-2-corey@minyard.net>
 <aAEkdwD888tW2OUY@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aAEkdwD888tW2OUY@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 17, 2025 at 06:55:35PM +0300, Andy Shevchenko
 wrote: > On Wed, Apr 16, 2025 at 01:36:15PM -0500, Corey Minyard wrote: >
 > Andy reported: > > > > Debian clang version 19.1.7 is not happy wh [...]
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.19 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.19 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.19 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u5RdM-00048A-4r
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

On Thu, Apr 17, 2025 at 06:55:35PM +0300, Andy Shevchenko wrote:
> On Wed, Apr 16, 2025 at 01:36:15PM -0500, Corey Minyard wrote:
> > Andy reported:
> > 
> > Debian clang version 19.1.7 is not happy when compiled with
> > `make W=1` (note, CONFIG_WERROR=y is the default):
> > 
> > ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type'
> > +from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]

It seems you copied'n'pasted from narrow screen. The lines should kept as is
(as long as they are) without an additional line break and plus sign.

> >   268 |         io.si_type      = (enum
> > +si_type)device_get_match_data(&pdev->dev);

Ditto.

> > The IPMI SI type is an enum that was cast into a pointer that was
> > then cast into an enum again.  That's not the greatest style, so
> > instead create an info structure to hold the data and use that.
> 
> Tested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
