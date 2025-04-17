Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EE2A9220D
	for <lists+openipmi-developer@lfdr.de>; Thu, 17 Apr 2025 17:56:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u5Ras-0001ai-Hc;
	Thu, 17 Apr 2025 15:56:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u5Raq-0001aI-CC for openipmi-developer@lists.sourceforge.net;
 Thu, 17 Apr 2025 15:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/j4bwNvyHB8LyZT0nymEdN3iWcAffW7s1g+aAXNQ7is=; b=QIZy1g/6/rM6Yo42kn3a8z9Vi0
 4zlA/3W86AKyKR7UHRUp9hhrAIzxB94Nz9y8ajYlIF0NygD+DoPosFrR6PeJAi5IdbYzWYmFLZ/bP
 09+Mxr0uKNpZ1dVnqYfSaS6YJP0VMUdD54FmSsUzr9FXe4hnedm0P35QKjb9INLaQ8Rc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/j4bwNvyHB8LyZT0nymEdN3iWcAffW7s1g+aAXNQ7is=; b=j9es+luzi92X/wyg7ZPoliZ4pX
 EaNbmz2RxiKTk/u7397lqt6fx803rhAJrAm+WqPa8foPxbSY5dnXHwdEz3l87e1Vugg2sjjUaJriT
 /zqBm91TJthDPcfIjboQG2hAEMCO56v0hZEo3pfZiPius/RWA6CLwBN9To04uWulBomI=;
Received: from mgamail.intel.com ([192.198.163.9])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u5Rab-0003Xl-4X for openipmi-developer@lists.sourceforge.net;
 Thu, 17 Apr 2025 15:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744905345; x=1776441345;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=czu23b/807cDDfwcB8TN6WMA0TNtGIk5Y4v6xBe9J5c=;
 b=DdNuC+pEb+r8K2WzJ8ItP9UCXUcQZ7hDpGvrvbMxYqrBvw1LnLR6xy7S
 mtgrvEGne+qPlsGtLIsite/yOo9qoa7uL56VhiZdJUOHEoMU356xVr07+
 RG0h0rWcatro/QhPCN2ClLYWVtIsq5pqTb3YM2ibDGYNzkUxGHfwMvFsS
 xrC6OD4iw2VGYDwCsM7IC6eqv3wsfCGzJCi9q4K7PTQeGXpCCqSTtSmhG
 YFK351PlnkgL6PtcQ4z8RoYVr1hO9QGNtSNamCqsdXpC9ch3UN9lE0923
 yIt+w39YTmieZfVSk4B1baSXPsY2jneg+6mVHrUiOu8upSl/iP8btvX6Z Q==;
X-CSE-ConnectionGUID: s0LeRZkfQc2cL3f+Jbc8Fg==
X-CSE-MsgGUID: yuZTCnbRQUWrFocsnNdUOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="57145627"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="57145627"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 08:55:39 -0700
X-CSE-ConnectionGUID: cnPo122qQnKUq/wq+Hb5jw==
X-CSE-MsgGUID: kRmTJp8hShypFjZ38hsNOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="135663136"
Received: from smile.fi.intel.com ([10.237.72.58])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 08:55:38 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u5RaR-0000000DFBM-38E0; Thu, 17 Apr 2025 18:55:35 +0300
Date: Thu, 17 Apr 2025 18:55:35 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aAEkdwD888tW2OUY@smile.fi.intel.com>
References: <20250416183614.3777003-2-corey@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250416183614.3777003-2-corey@minyard.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 16, 2025 at 01:36:15PM -0500,
 Corey Minyard wrote:
 > Andy reported: > > Debian clang version 19.1.7 is not happy when compiled
 with > `make W=1` (note, CONFIG_WERROR=y is the default): > > [...] 
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
 [192.198.163.9 listed in sa-trusted.bondedsender.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.198.163.9 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.9 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u5Rab-0003Xl-4X
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

On Wed, Apr 16, 2025 at 01:36:15PM -0500, Corey Minyard wrote:
> Andy reported:
> 
> Debian clang version 19.1.7 is not happy when compiled with
> `make W=1` (note, CONFIG_WERROR=y is the default):
> 
> ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type'
> +from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
>   268 |         io.si_type      = (enum
> +si_type)device_get_match_data(&pdev->dev);
> 
> The IPMI SI type is an enum that was cast into a pointer that was
> then cast into an enum again.  That's not the greatest style, so
> instead create an info structure to hold the data and use that.

Tested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
