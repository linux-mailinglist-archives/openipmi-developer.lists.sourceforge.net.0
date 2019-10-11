Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 974AAD452C
	for <lists+openipmi-developer@lfdr.de>; Fri, 11 Oct 2019 18:15:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iIxa6-0005xX-06; Fri, 11 Oct 2019 16:15:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1iIxa4-0005xL-Iv
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 16:15:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J67BoPuzfsylSMe5nto0Z1+CMRBCxtr5i4hxLN937vM=; b=KxHLIxaMCx6yvWshXCCg16cpTC
 jzBZxsqUzhv99YD7Z8cKnpb43rIr+DN2KEd5ydKKjOjBRr/h43K2S/PFEbAPtSWhG0ZAwwAeS9Xhs
 r7DGoLOZS6SYjF5WGdwlHwTSGmaWFIhxSZy92XA5t4VcxYcsfGNP36F7sXmgJ8eNOkPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J67BoPuzfsylSMe5nto0Z1+CMRBCxtr5i4hxLN937vM=; b=i/52/cs7+3mpH7QXwpFxUSdTIZ
 XDdGOBzbcYXdFr0SQ6ijTddrYzQPC1uHLzjpzP+YI920B8oQrO/SgjkNm8178su69pYwtzJh/wI3F
 zQsEDZhw8berqL8tDVLD6TzR5MZbg344EmK6m+7Y63ZaLkT/rmoqB7haeDVF6xWNg2bQ=;
Received: from smtprelay0001.hostedemail.com ([216.40.44.1]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iIxa0-0069hJ-8d
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 16:15:52 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 338A68368F0B;
 Fri, 11 Oct 2019 16:15:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::,
 RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:4321:5007:7903:8603:9389:10004:10400:11026:11232:11473:11658:11914:12297:12438:12740:12760:12895:13069:13311:13357:13439:14659:21080:21212:21627:30054:30090:30091,
 0,
 RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: oil02_4ec6eab431f26
X-Filterd-Recvd-Size: 1758
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Fri, 11 Oct 2019 16:15:41 +0000 (UTC)
Message-ID: <168ca7e087da28527134816b7a4dabac043a0796.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Fri, 11 Oct 2019 09:15:39 -0700
In-Reply-To: <20191011160541.GG32742@smile.fi.intel.com>
References: <20191011145213.65082-1-andriy.shevchenko@linux.intel.com>
 <4eaca9a1bcbf9d87c1fb3c9135876c3ecb72a91b.camel@perches.com>
 <20191011151220.GB32742@smile.fi.intel.com>
 <e0b24ff49eb69a216b11f97db1fc26c5d3b971b4.camel@perches.com>
 <7831759661d9f3d47bd304b2e98e65e5d6c5d167.camel@perches.com>
 <20191011160541.GG32742@smile.fi.intel.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iIxa0-0069hJ-8d
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

On Fri, 2019-10-11 at 19:05 +0300, Andy Shevchenko wrote:
> On Fri, Oct 11, 2019 at 08:46:41AM -0700, Joe Perches wrote:
> > Using %*ph format to print small buffers as hex string reduces
> > overall object size and allows the removal of the two variants
> > of ipmi_debug_msg.
> > 
> > This also removes unnecessary duplicate colons from output when
> > enabled by #DEBUG or newly possible CONFIG_DYNAMIC_DEBUG.
> 
> I have sent v2 with slightly better approach (no need to have %s).

Great, yours has the advantage of actually compiling properly.
I did not reverse the arguments after the format.  oops.




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
