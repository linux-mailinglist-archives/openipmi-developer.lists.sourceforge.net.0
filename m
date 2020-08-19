Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 677E2249D58
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 14:05:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8Mqa-000821-Sq; Wed, 19 Aug 2020 12:05:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1k8MqX-00081A-3P
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Aug 2020 12:05:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H4bSIwFBqY21C3Ud+6bKDf3J7P6TmEqOuK522X7ESY8=; b=MjY5ZsvPnlFKD86LHDzE3pJew3
 bib5bG2y3tRRuLpSa360yuRapKQh9EWPjt0Es70taaF02JjSN/owxgkNgRlaiWVdErFjvfTlRodba
 d9mFoAcmVFoWR71ywfovfeBRhOMFn3p8nvRXM5dW3S8m6yOVu3K1SvYVp4ShUfy1B0Y8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H4bSIwFBqY21C3Ud+6bKDf3J7P6TmEqOuK522X7ESY8=; b=YAe39QeZDl7nwHYGsPpL0en1SY
 3XKGFRwDmKPGMffcWS5x2T5Uc/Bt3ctCoNXmMJN5vp284FqTZksZY4pDziJwAKq9dHZmR1wPQh0oY
 xbuZnE2fStbCmrxIyQit8/5ue8UQJERyefg1Fl+/+f10bM7htDpVZ9YuZyBvAdjBR3OU=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k8MqT-00CMI5-16
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Aug 2020 12:05:36 +0000
IronPort-SDR: YPzBSVFtXomTUyKAV6T4pihMULLzuI27ykm7+q50/MEEp3eGv7TMRTVjJ5tNEzl4+qNmVp/Ctj
 VxLIsiSnCNTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="173138910"
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="173138910"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 05:05:12 -0700
IronPort-SDR: nd7vxqidoS7iz7dcHCInN0RmHumd5ibpY//IqeRpgyQcZkTrgY8Ve52W1ztdzVhtWWWc9TBD20
 xEM84eWopVaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="327068671"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 19 Aug 2020 05:05:11 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1k8Mq5-009rx3-Mf; Wed, 19 Aug 2020 15:05:09 +0300
Date: Wed, 19 Aug 2020 15:05:09 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20200819120509.GH1891694@smile.fi.intel.com>
References: <20200819101439.74566-1-andriy.shevchenko@linux.intel.com>
 <20200819115717.GJ2842@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819115717.GJ2842@minyard.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8MqT-00CMI5-16
Subject: Re: [Openipmi-developer] [PATCH v1] ipmi: convert tasklets to use
 new tasklet_setup() API
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 19, 2020 at 06:57:17AM -0500, Corey Minyard wrote:
> I already have a patch for this from Allen Pais that is in the next
> tree.

Apparently not in today's Linux Next...

> On Wed, Aug 19, 2020 at 01:14:39PM +0300, Andy Shevchenko wrote:
> > In preparation for unconditionally passing the struct tasklet_struct
> > pointer to all tasklet callbacks, switch to using the new tasklet_setup()
> > and from_tasklet() to pass the tasklet pointer explicitly.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
