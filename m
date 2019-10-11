Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FA9D4481
	for <lists+openipmi-developer@lfdr.de>; Fri, 11 Oct 2019 17:36:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iIwyG-0004Fz-ED; Fri, 11 Oct 2019 15:36:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iIwyF-0004Fs-HG
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 15:36:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XR4//LA75uX460QqUmXDe8pehNvlNe12LxNojmggOdw=; b=S1KiZatVfIgXzldPrjq80Vgzgw
 ykrqrQ4bU5UZu37QMaYcuhoJTL5edHKpZOR/nTteQSKIv1YvXNR2RmDcquOD0wEP9IPVAhxC1YfoJ
 SBZnhLCIs7BjWR81lkKgNtVDKwXtiYZLPHWhVoxYEhW900hNfrSbUSMvER9EItCleZWc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XR4//LA75uX460QqUmXDe8pehNvlNe12LxNojmggOdw=; b=VLg0Jx0bfCBnD6iRT+C4DKdjAo
 TSfQRrv8DOtP4EhdvRG0aUy70YLWYCxw2/CEVWVrhNgd6r3J3DGEklRtE7cKYn9SrW9Ef9cuWzT0j
 3K5Bc23md2+HjdekiEZGzrsf26r9xP0IljRE+SaKIbPAtXdn9FhFPxqS0rwQzBjC6S00=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iIwyE-00EIwk-21
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 15:36:47 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 08:36:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="184797061"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga007.jf.intel.com with ESMTP; 11 Oct 2019 08:36:38 -0700
Received: from andy by smile with local (Exim 4.92.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iIwy6-00012Z-2G; Fri, 11 Oct 2019 18:36:38 +0300
Date: Fri, 11 Oct 2019 18:36:38 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20191011153638.GF32742@smile.fi.intel.com>
References: <20191011145213.65082-1-andriy.shevchenko@linux.intel.com>
 <4eaca9a1bcbf9d87c1fb3c9135876c3ecb72a91b.camel@perches.com>
 <20191011151220.GB32742@smile.fi.intel.com>
 <e0b24ff49eb69a216b11f97db1fc26c5d3b971b4.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0b24ff49eb69a216b11f97db1fc26c5d3b971b4.camel@perches.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iIwyE-00EIwk-21
Subject: Re: [Openipmi-developer] [PATCH v1] ipmi: use %*ph to print small
 buffer
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Oct 11, 2019 at 08:18:41AM -0700, Joe Perches wrote:
> On Fri, 2019-10-11 at 18:12 +0300, Andy Shevchenko wrote:
> > On Fri, Oct 11, 2019 at 07:58:14AM -0700, Joe Perches wrote:
> > > On Fri, 2019-10-11 at 17:52 +0300, Andy Shevchenko wrote:

> > > >  static void ipmi_debug_msg(const char *title, unsigned char *data,
...
> > > > +	pr_debug("%s: %*ph\n", title, len, buf);
...
> > > >  #else
> > > >  static void ipmi_debug_msg(const char *title, unsigned char *data,

> > > Now you might as well remove the #ifdef DEBUG above this
> > > and the empty function in the #else too.
> > 
> > It's up to maintainer.
> 
> That's like suggesting any function with a single pr_debug
> should have another duplicative empty function without.
> 
> Using code like the below is not good form as it's prone
> to defects when the arguments in one block is changed but
> not the other.
> 
> Also the first form doesn't work with dynamic debug.

I'm surprised to see my name in To:. I guess you intended to explain this to
Corey. I'm fine with either, since I have no idea what is in the IPMI going on.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
