Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7B1A90A61
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Apr 2025 19:46:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u56q8-0001UY-6y;
	Wed, 16 Apr 2025 17:46:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u56q7-0001UM-6U for openipmi-developer@lists.sourceforge.net;
 Wed, 16 Apr 2025 17:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vyOqOLkBJ02Sb54bIBN0YW2fMguN7HavnxPxwZbUouo=; b=FXaK4cm+Xthr95jzFAZ+WmuaxZ
 P2zUR99H4pyH8tmKMKCqfjyM45jE2NwTY7U2gBUe0MgQqpzjD/PvOBDwZDYwN+NEFcpGodpZar2E9
 AQh2dOmvM0mTDTH1n00njeoGeTXQ+DqxI7Kj1FRLLTDxOJEH23/g4VIK2v2ermTigi6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vyOqOLkBJ02Sb54bIBN0YW2fMguN7HavnxPxwZbUouo=; b=LIQ0fahrHQa2NPX2h7y2rpCB2y
 3brepQW/K++0uYHg1mk6FklF7LOJPDMI2yW2H8Tc3iiGB53St2KvQZt14wG/SZs2gHfKN2/BosC2p
 mxcHGzSGsPRypCllCm39AEa6SudchoiKgtGVJkas1iB7Nxsc5tBy/ONB2jmH9OyUi4lI=;
Received: from mgamail.intel.com ([198.175.65.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u56pr-0008C1-RC for openipmi-developer@lists.sourceforge.net;
 Wed, 16 Apr 2025 17:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744825567; x=1776361567;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5kHFo+V9DJIddaMgMFYm4EJg+ZcCk/tBSs8csBR+egs=;
 b=biW3Y9Ln1tTZXxcOBqbJGRG0aRxVLZDSM1cRD4KnQ0qFpvWA3UH1LZ8B
 jyj062tC0xn14iXyJnYn5r2OjBGfvdspF3+udzf4ZmmYJCoZqeE7NyFoH
 TRvijbuMSxYF8vJuLDRgpTZULOWNROHRr+q0uZT9eXXYCzSjKX0ilkxj8
 EwC+5ZNLnab/9LThwYh+GifKH+ATIP/SD/Amze1jnoVte63MdxStG2BDH
 yjoGlwKR2DD5oTtUcah/63mnLFBXB35kLhoMnD+dmp3oPdjP7kTLWR3MT
 Qo1U0VJiJ/W0146WyYX9vtZaxV7o0Aan6LYcAz/QuW/LqNabrTagaIvt5 w==;
X-CSE-ConnectionGUID: D2BDME7sT6KSLEChAmXfoA==
X-CSE-MsgGUID: Ah+I4kM9S2SWfB3/1JAyXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46517464"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="46517464"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 10:45:56 -0700
X-CSE-ConnectionGUID: VpcMh4JERfyv0DJt4f8EcA==
X-CSE-MsgGUID: PFvb/YazQaOppcESy+/Smw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="161589079"
Received: from smile.fi.intel.com ([10.237.72.58])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 10:45:53 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u56pb-0000000Cvdi-1oVM; Wed, 16 Apr 2025 20:45:51 +0300
Date: Wed, 16 Apr 2025 20:45:51 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Z_6uzH9DsWIh-hIz@mail.minyard.net
Message-ID: <Z__sz8BvIvdyF4dN@smile.fi.intel.com>
References: <Z_-d6Pj7ZFuG9gNA@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z_-d6Pj7ZFuG9gNA@mail.minyard.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 16, 2025 at 07:09:12AM -0500,
 Corey Minyard wrote:
 > Andy reported: > > Debian clang version 19.1.7 is not happy when compiled
 with > `make W=1` (note, CONFIG_WERROR=y is the default): > > [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.18 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.18 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.18 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u56pr-0008C1-RC
Subject: Re: [Openipmi-developer] [PATCH] ipmi:si: Move SI type information
 into an info structure
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

On Wed, Apr 16, 2025 at 07:09:12AM -0500, Corey Minyard wrote:
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

I'm going to test this today or latest tomorrow, below some comments.

...

>  	u8 slave_addr;
> -	enum si_type si_type;
> +	struct ipmi_match_info si_info;

	const struct ipmi_match_info *si_info;

?

I understand that right now there is no benefit, but my suggestion is scalable
and prevents from sudden values rewrites. Also that's how other drivers do, but
of course not all of them.

>  	struct device *dev;

...

> -	else if ((new_smi->io.si_type != SI_BT) && (!new_smi->io.irq))
> +	else if ((new_smi->io.si_info.type != SI_BT) && (!new_smi->io.irq))

While at it, drop unneeded parentheses (at least in the second part).

>  		enable = 1;

...

>  static int ipmi_pci_probe_regspacing(struct si_sm_io *io)
>  {
> -	if (io->si_type == SI_KCS) {
> +	if (io->si_info.type == SI_KCS) {
>  		unsigned char	status;
>  		int		regspacing;

It looks like the above conditional is for the whole function, if this is
the case, I would go with an additional patch to drop the indentation level.

	unsigned char	status;
	int		regspacing;
	...
	if (io->si_info.type != SI_KCS)
		return ...

...

>  #ifdef CONFIG_OF

I would clean up this ugly ifdeffery as well, but it can be done after this
patch.

> +static struct ipmi_match_info kcs_info = { .type = SI_KCS };
> +static struct ipmi_match_info smic_info = { .type = SI_SMIC };
> +static struct ipmi_match_info bt_info = { .type = SI_BT };
> +
>  static const struct of_device_id of_ipmi_match[] = {
> -	{ .type = "ipmi", .compatible = "ipmi-kcs",
> -	  .data = (void *)(unsigned long) SI_KCS },
> -	{ .type = "ipmi", .compatible = "ipmi-smic",
> -	  .data = (void *)(unsigned long) SI_SMIC },
> -	{ .type = "ipmi", .compatible = "ipmi-bt",
> -	  .data = (void *)(unsigned long) SI_BT },
> +	{ .type = "ipmi", .compatible = "ipmi-kcs", .data = &kcs_info },
> +	{ .type = "ipmi", .compatible = "ipmi-smic", .data = &smic_info },
> +	{ .type = "ipmi", .compatible = "ipmi-bt", .data = &bt_info },
>  	{},

...and this line should not have a trailing comma.

>  };
>  MODULE_DEVICE_TABLE(of, of_ipmi_match);

...

> +	io.si_info	= *((struct ipmi_match_info *)
> +			    device_get_match_data(&pdev->dev));

This ugly casting won't be needed if you use const pointer as suggested above.

	io.si_info	= *((struct ipmi_match_info *)
			    device_get_match_data(&pdev->dev));

...

>  	switch (tmp) {
>  	case 1:
> -		io.si_type = SI_KCS;
> +		io.si_info.type = SI_KCS;
>  		break;
>  	case 2:
> -		io.si_type = SI_SMIC;
> +		io.si_info.type = SI_SMIC;
>  		break;
>  	case 3:
> -		io.si_type = SI_BT;
> +		io.si_info.type = SI_BT;
>  		break;
>  	case 4: /* SSIF, just ignore */
>  		return -ENODEV;

I haven't looked where tmp comes from, but maybe that's a candidate to be in
the info structure to begin with?

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
