Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B328970B0
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Apr 2024 15:24:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rs0bS-0007qI-QF;
	Wed, 03 Apr 2024 13:24:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1rs0bR-0007q8-Fp for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 13:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gK/TniGsphb34ky+1gU3poSpGLl1lV55wCoiQZ6Ujao=; b=iCaZW1BUDsdPWRIHdVq2tVJJWi
 Bap2shUYCHR7q4vIJYUw4a+1GWVnK0wSF3U/SsqPPt+LZUtx7ahj+5CnHQQLV1cuM7O3EbdNLVQ6w
 EOAUHvOPDOdbvXQDNm6bFDC1NSwcAzYldgAkscncm2dzJFMjc2i3P5RSUQdaYv1HNzxI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gK/TniGsphb34ky+1gU3poSpGLl1lV55wCoiQZ6Ujao=; b=CD+dsYtiW1BBkrSsFABuU8QMfK
 huyPLYTeXIqIcOqLHqCeHcvkU9t3e4m3AB8CAp8fnApXJ4oCG6k4WwFH/KIYVlmfKEs3VSylu7wQX
 VK/FF4OvbAyQTEutSGUqionj5CNZQE5diEpC8GkWVqOCtPO6iWx/HJteTQFYtYsXKC7Y=;
Received: from mgamail.intel.com ([192.198.163.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rs0bO-0001HU-Ar for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 13:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712150670; x=1743686670;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=I5RGyzMLJIXNupLdtHjUd2yPu3cEeEw2E/J4C1xPUx4=;
 b=RxoZCzd0CSVlROVUYq9jlVkT55Q6uUkyTaUX8Z/uL8Me4M0bsmVSYgJz
 5IwJq9QNUEcDmiGL1sHuhEvdNiOeMeS6SsAKubLU9J2umjY7kUzn4KVuo
 OjaxqXBrpa+dEMNwD0HY9uajdYqEBPAbB8P2f5B0x1LeYD2jv1thyA4JA
 ug7ZiXznijhu4ea8SM2TV653DnuPBtgSGRW358TDmN57uoxw2oJc5Q4sq
 PfcAssm3eRH0GBxXVr+UsgZ8sU/vPb0ee2E5sU5M1ZK3wD/xPirYJyQpN
 ++gzkK8yfEVOcVb1SYD6RbHvPqhoivq7hBEf2jSB9TooHplrMsMIoZkG6 Q==;
X-CSE-ConnectionGUID: YVXYYp5VRHq/EbLmf7fOqg==
X-CSE-MsgGUID: V3xjkr9oQ1mxw2UFzUee5Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7243756"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7243756"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:24:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="915183381"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="915183381"
Received: from smile.fi.intel.com (HELO smile) ([10.237.72.54])
 by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:23:53 -0700
Received: from andy by smile with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1rs0aj-0000000180g-2o4w; Wed, 03 Apr 2024 16:23:49 +0300
Date: Wed, 3 Apr 2024 16:23:49 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <minyard@acm.org>
Message-ID: <Zg1YZVtM3CZWDYq1@smile.fi.intel.com>
References: <20240403080702.3509288-1-arnd@kernel.org>
 <20240403080702.3509288-34-arnd@kernel.org>
 <Zg0hxMZGlwfXV2RA@smile.fi.intel.com>
 <Zg1P9fpdwPot3Dxj@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zg1P9fpdwPot3Dxj@mail.minyard.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 03, 2024 at 07:47:49AM -0500,
 Corey Minyard wrote:
 > On Wed, Apr 03, 2024 at 12:30:44PM +0300, Andy Shevchenko wrote: > > On
 Wed, Apr 03, 2024 at 10:06:51AM +0200, Arnd Bergmann wrote: > > [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [192.198.163.17 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rs0bO-0001HU-Ar
Subject: Re: [Openipmi-developer] [PATCH 33/34] drivers: remove incorrect
 of_match_ptr/ACPI_PTR annotations
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Randy Dunlap <rdunlap@infradead.org>, Tony Lindgren <tony@atomide.com>,
 Tom Rix <trix@redhat.com>, Linus Walleij <linus.walleij@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 linux-i2c@vger.kernel.org, Shan-Chun Hung <schung@nuvoton.com>,
 Russell King <linux@armlinux.org.uk>, Peter Huewe <peterhuewe@gmx.de>,
 Jiri Slaby <jirislaby@kernel.org>, linux-rtc@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 netdev@vger.kernel.org, Jarkko Sakkinen <jarkko@kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-serial@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, linux-fpga@vger.kernel.org,
 Wu Hao <hao.wu@intel.com>, linux-input@vger.kernel.org,
 Jacky Huang <ychuang3@nuvoton.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Jiri Kosina <jikos@kernel.org>,
 Mark Brown <broonie@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@kernel.org>,
 Salil Mehta <salil.mehta@huawei.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Xu Yilun <yilun.xu@intel.com>, dmaengine@vger.kernel.org,
 linux-integrity@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 03, 2024 at 07:47:49AM -0500, Corey Minyard wrote:
> On Wed, Apr 03, 2024 at 12:30:44PM +0300, Andy Shevchenko wrote:
> > On Wed, Apr 03, 2024 at 10:06:51AM +0200, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>

...

> > > I considered splitting up the large patch into per subsystem patches, but since
> > > it's really just the same thing everywhere it feels better to do it all at once.
> > 
> > Can we split to three groups:
> > - Dropping ACPI_PTR()
> > - Dropping of_match_ptr() (which I won't review in depth, for example)
> > - Dropping both
> > ?
> 
> Why?

Easy to review ACPI parts independently on the rest. I think I explained that
in above. Besides that some patches might require additional work (don't remember
if it is the case for _this_ patch).

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
