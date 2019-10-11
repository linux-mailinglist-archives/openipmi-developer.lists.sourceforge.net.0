Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15926D4405
	for <lists+openipmi-developer@lfdr.de>; Fri, 11 Oct 2019 17:18:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iIwgu-0003PF-BT; Fri, 11 Oct 2019 15:18:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1iIwgt-0003P8-OA
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 15:18:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iTpV0AzxqrewyU9LYNyvPmC6V3RpC9XwvP9WFQKETSg=; b=IbRVvgEBjT1VJkKYVcYKwJ0cIL
 foD9Z+iemPerkuIA+E4W8SopDbTWb54pJNf4xcaHml0B2aNflugCJqgsZfnpYS0SHJ4GuVR76HB3K
 0/+LMRCLkfDpvQR3xg6QF0EKXPk/iK2vjGy5n2ZzTw4S2WtkPZ0SvXaI0vp+fT8QIbuw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iTpV0AzxqrewyU9LYNyvPmC6V3RpC9XwvP9WFQKETSg=; b=kENqjeEWnh1VGy9c+FIOEH+nVS
 aBfO3sgu8uOUabFaC++DT3bc9YettCjerhxaZiugcJplAuxKHsJA7qOQ+8+3qIGzTlXJxsJ6WzjXF
 TdjYBZjV5ZpvsxONHbIHQ73m0LSNRafi2CDxkcaBiKFew/Wx5tXI0ipwLo0RNh+0rz7I=;
Received: from smtprelay0200.hostedemail.com ([216.40.44.200]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iIwgs-0068fz-6l
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 15:18:51 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 1A029837F24C;
 Fri, 11 Oct 2019 15:18:44 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::,
 RULES_HIT:41:355:379:421:599:960:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2828:2890:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4042:4250:4321:5007:8603:10004:10400:10848:11026:11232:11658:11914:12043:12295:12296:12297:12740:12760:12895:13019:13069:13153:13228:13311:13357:13439:14659:14721:21080:21450:21627:21740:30001:30012:30054:30070:30090:30091,
 0,
 RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: trip06_11eada1f9c817
X-Filterd-Recvd-Size: 2799
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Fri, 11 Oct 2019 15:18:43 +0000 (UTC)
Message-ID: <e0b24ff49eb69a216b11f97db1fc26c5d3b971b4.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Fri, 11 Oct 2019 08:18:41 -0700
In-Reply-To: <20191011151220.GB32742@smile.fi.intel.com>
References: <20191011145213.65082-1-andriy.shevchenko@linux.intel.com>
 <4eaca9a1bcbf9d87c1fb3c9135876c3ecb72a91b.camel@perches.com>
 <20191011151220.GB32742@smile.fi.intel.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.200 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.200 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iIwgs-0068fz-6l
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

On Fri, 2019-10-11 at 18:12 +0300, Andy Shevchenko wrote:
> On Fri, Oct 11, 2019 at 07:58:14AM -0700, Joe Perches wrote:
> > On Fri, 2019-10-11 at 17:52 +0300, Andy Shevchenko wrote:
> > > Use %*ph format to print small buffer as hex string.
> > > 
> > > The change is safe since the specifier can handle up to 64 bytes and taking
> > > into account the buffer size of 100 bytes on stack the function has never been
> > > used to dump more than 32 bytes. Note, this also avoids potential buffer
> > > overflow if the length of the input buffer is bigger.
> > []
> > > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > []
> > > @@ -48,14 +48,7 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
> > >  static void ipmi_debug_msg(const char *title, unsigned char *data,
> > >  			   unsigned int len)
> > >  {
> > > -	int i, pos;
> > > -	char buf[100];
> > > -
> > > -	pos = snprintf(buf, sizeof(buf), "%s: ", title);
> > > -	for (i = 0; i < len; i++)
> > > -		pos += snprintf(buf + pos, sizeof(buf) - pos,
> > > -				" %2.2x", data[i]);
> > > -	pr_debug("%s\n", buf);
> > > +	pr_debug("%s: %*ph\n", title, len, buf);
> > >  }
> > >  #else
> > >  static void ipmi_debug_msg(const char *title, unsigned char *data,
> > 
> > Now you might as well remove the #ifdef DEBUG above this
> > and the empty function in the #else too.
> 
> It's up to maintainer.

That's like suggesting any function with a single pr_debug
should have another duplicative empty function without.

Using code like the below is not good form as it's prone
to defects when the arguments in one block is changed but
not the other.

Also the first form doesn't work with dynamic debug.

#ifdef DEBUG
void debug_print(...)
{
	pr_debug(...);
}
#else
void debug_print(...)
{
}
#endif





_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
