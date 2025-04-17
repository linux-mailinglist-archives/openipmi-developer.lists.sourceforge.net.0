Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C39FCA921C0
	for <lists+openipmi-developer@lfdr.de>; Thu, 17 Apr 2025 17:34:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u5RGB-0006AB-Ok;
	Thu, 17 Apr 2025 15:34:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u5RGA-0006A4-5s for openipmi-developer@lists.sourceforge.net;
 Thu, 17 Apr 2025 15:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1u2H/giRnLuyQMztZ23E4bZOEnG8s7BBnDTYye8Gclc=; b=Yb63S/2Igwdg6g4h66xOordCE3
 /O+qOdSEITnItWuqgZurPTNToENLzUP+S7tSBkqe902u3ZC/3Ljc0FwXocT9xH+p1PVBp03Ii/ZLD
 rD2j6BFk6jixngAYFJU4M0ws0qSn0EuJjpNiK/kArmNY9MtS7SMCcm50UB80F9cF4lt8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1u2H/giRnLuyQMztZ23E4bZOEnG8s7BBnDTYye8Gclc=; b=LhpzbyNFFdMctBW560PHQbQKaU
 l0KVeyDRCWkoKu0dsapuJ68xcwPFycKi7YO7quKdOGW8zZ7StOCahedF5EzVvEz7jCNeGMIgnbZr7
 i5rdwSY/X3lQSCyqSeEX8RGcL3abRnMu07xdaLCUpCP9+Z37lG3xC6fEPY4srPWqKQKU=;
Received: from mgamail.intel.com ([192.198.163.10])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u5RFu-0007rz-25 for openipmi-developer@lists.sourceforge.net;
 Thu, 17 Apr 2025 15:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744904062; x=1776440062;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LPpZxwUD/ZvaXLJL/1CrEjzJaxCskyY8yTxIvOWqWw8=;
 b=Zp4yTRksPylScZJ/zvR3xytl9c8oqOCziVgZmqhert/n1Kri5yGVjgBa
 4bAzKFtZ+RXsKdOn1u9lkhaA8LZ1tWwDxSU6BfKj/wyrP5AFZR+w3G423
 R4BGdpWj5Y0Y6HUwSOI+820vzDelUQUTYVOsqlBuEEGP/uLE/FzuD2uWj
 Pk9GqhJz6A4I1CBhS7r1MLusT0yDWmURAig3531/AUKpZs08KIASkoLPj
 y70u4TxiycaIgfwBQ3QPrFZMpi51qrW6uuTrYPEbkwpZyZrurrpitpb8Q
 iAEGZ30gcuGlT3UtdSTp0RNufLMOELZw17ZfqM44UvYW+k5eIiUfV2Qzn w==;
X-CSE-ConnectionGUID: 4A8y+BAIQLOqZoizYPDu5A==
X-CSE-MsgGUID: eH0V3qeER/aPqjG/6VIf3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="57884242"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="57884242"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 08:34:11 -0700
X-CSE-ConnectionGUID: qj465E5pQWWAkNhWWHa2qw==
X-CSE-MsgGUID: 39QMP6tbQr+5k/HD4S3WAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="136011535"
Received: from smile.fi.intel.com ([10.237.72.58])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 08:34:10 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u5RFf-0000000DEqt-2qlP; Thu, 17 Apr 2025 18:34:07 +0300
Date: Thu, 17 Apr 2025 18:34:07 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Z_6uzH9DsWIh-hIz@mail.minyard.net
Message-ID: <aAEfb3y7fCnvPc_F@smile.fi.intel.com>
References: <Z_-d6Pj7ZFuG9gNA@mail.minyard.net>
 <Z__sz8BvIvdyF4dN@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z__sz8BvIvdyF4dN@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 16, 2025 at 08:45:51PM +0300, Andy Shevchenko
 wrote: > On Wed, Apr 16, 2025 at 07:09:12AM -0500, Corey Minyard wrote: >
 > Andy reported: > > > > Debian clang version 19.1.7 is not happy wh [...]
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.198.163.10 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.10 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.10 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u5RFu-0007rz-25
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

On Wed, Apr 16, 2025 at 08:45:51PM +0300, Andy Shevchenko wrote:
> On Wed, Apr 16, 2025 at 07:09:12AM -0500, Corey Minyard wrote:
> > Andy reported:
> > 
> > Debian clang version 19.1.7 is not happy when compiled with
> > `make W=1` (note, CONFIG_WERROR=y is the default):
> > 
> > ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type'
> > +from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> >   268 |         io.si_type      = (enum
> > +si_type)device_get_match_data(&pdev->dev);
> > 
> > The IPMI SI type is an enum that was cast into a pointer that was
> > then cast into an enum again.  That's not the greatest style, so
> > instead create an info structure to hold the data and use that.
> 
> I'm going to test this today or latest tomorrow, below some comments.

I have noticed the commit 37631eee2063 ("ipmi:si: Move SI type information into
an info structure") which is in Linux Next and it compiles for me as expected,
thank you for the prompt fix!

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
