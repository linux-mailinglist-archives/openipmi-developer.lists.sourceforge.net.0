Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B53D44F5
	for <lists+openipmi-developer@lfdr.de>; Fri, 11 Oct 2019 18:05:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iIxQN-0005VE-Vo; Fri, 11 Oct 2019 16:05:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iIxQN-0005V8-3H
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 16:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Du37FMMOr5es07//Qu9fKfiXJWvvuJDYat9iWMicyEo=; b=PDPu7k5xCGfpnqUGojfedy0/9l
 u16MnKLZGTxeIttvkxNJreU8ATK8yU9rG6yOyg1r2EtoeV1kibBpFmluYaiBkMrmxoTQQDA3mS2OG
 Ftv390WfanuhkhivEulV4aGFTvGSkkPG4qRVTXAdatLrxdfWxhVA8aDOP12JXEkn/cg0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Du37FMMOr5es07//Qu9fKfiXJWvvuJDYat9iWMicyEo=; b=M4N/fOmrG8eLbtiiu7uxwXlBG2
 PfAEyC/sCObUdTObbYgFcGsuMBRWH+iDGpjcStcOIAIH3I9Kho+85ooJ+PMnNyvhFhIZzW6/RfSA5
 FXK2hLW4prdm1cgu3SUE0RlhcwdO6lTSu4Zz58L4zXsTOmK0O1FAplFH/OF2VmOWtLTg=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iIxQL-00691n-Bt
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 16:05:51 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 09:05:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="278166191"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga001.jf.intel.com with ESMTP; 11 Oct 2019 09:05:42 -0700
Received: from andy by smile with local (Exim 4.92.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iIxQD-0001Rq-7i; Fri, 11 Oct 2019 19:05:41 +0300
Date: Fri, 11 Oct 2019 19:05:41 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20191011160541.GG32742@smile.fi.intel.com>
References: <20191011145213.65082-1-andriy.shevchenko@linux.intel.com>
 <4eaca9a1bcbf9d87c1fb3c9135876c3ecb72a91b.camel@perches.com>
 <20191011151220.GB32742@smile.fi.intel.com>
 <e0b24ff49eb69a216b11f97db1fc26c5d3b971b4.camel@perches.com>
 <7831759661d9f3d47bd304b2e98e65e5d6c5d167.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7831759661d9f3d47bd304b2e98e65e5d6c5d167.camel@perches.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iIxQL-00691n-Bt
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Convert ipmi_debug_msg to
 pr_debug and use %*ph
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

On Fri, Oct 11, 2019 at 08:46:41AM -0700, Joe Perches wrote:
> Using %*ph format to print small buffers as hex string reduces
> overall object size and allows the removal of the two variants
> of ipmi_debug_msg.
> 
> This also removes unnecessary duplicate colons from output when
> enabled by #DEBUG or newly possible CONFIG_DYNAMIC_DEBUG.

I have sent v2 with slightly better approach (no need to have %s).

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
