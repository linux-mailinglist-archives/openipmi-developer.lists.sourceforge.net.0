Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A4C227528
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Jul 2020 04:00:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jxha4-0000Z5-Py; Tue, 21 Jul 2020 02:00:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1jxha2-0000Yx-SD
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Jul 2020 02:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7x+Iqwwft/FdZB32WEzkbRJCLmyIOk++60X+k8h/fvk=; b=SFgZKHcw4hhimby+I/0Lh/N5YW
 Sdi4ItK+EzMNK3RE/g6uPgKjR4u+0Chyqrbv6+g6uAZnvreaAiKYxyccdG2oQ3kbfkR/bsPsNAJlx
 v7QkX9B4FQBIJ08fbQUxWwgnK1MDpwJ7aPh0oMZ5QdhnHFZBKzu8RCIbOoaruOa/oxAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7x+Iqwwft/FdZB32WEzkbRJCLmyIOk++60X+k8h/fvk=; b=QEckCSOyLujoJz3JKUtY+y5kMQ
 tynQ6kTgR5PA7W6gyuLUIxiASC2GVwUEN5YRZy3aajyOxJcQvT2tDqDTGZ7ERxGlr8v+HMGYQ0uYP
 LNsCl8/uo0IBQVAYOIoCKDaXGM53s5jgsbCUuS8AJ4E2X5F/BpxuX7M6fhkPF+XBMsac=;
Received: from smtprelay0012.hostedemail.com ([216.40.44.12]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxha1-002LhC-5D
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Jul 2020 02:00:30 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 3BA2118020C26;
 Tue, 21 Jul 2020 02:00:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3870:3871:3872:3873:4321:4605:5007:7901:7903:9038:10004:10400:11026:11232:11658:11914:12043:12296:12297:12740:12760:12895:13069:13161:13229:13255:13311:13357:13439:14659:14721:21080:21627:21990:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: sheep38_3d1250f26f29
X-Filterd-Recvd-Size: 2277
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Tue, 21 Jul 2020 02:00:21 +0000 (UTC)
Message-ID: <b38a439b2bdd1122805aa182da9a1802e673f53e.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>, minyard@acm.org
Date: Mon, 20 Jul 2020 19:00:20 -0700
In-Reply-To: <908fcbf2-efbb-b3f4-0666-2da79fbe99c4@huawei.com>
References: <1595210605-27888-1-git-send-email-wangxiongfeng2@huawei.com>
 <20200720195234.GC2952@minyard.net>
 <908fcbf2-efbb-b3f4-0666-2da79fbe99c4@huawei.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.12 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jxha1-002LhC-5D
Subject: Re: [Openipmi-developer] [PATCH] ipmi/watchdog: add missing
 newlines when printing parameters by sysfs
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de, guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 2020-07-21 at 09:20 +0800, Xiongfeng Wang wrote:
> On 2020/7/21 3:52, Corey Minyard wrote:
> > On Mon, Jul 20, 2020 at 10:03:25AM +0800, Xiongfeng Wang wrote:
> > > When I cat some ipmi_watchdog parameters by sysfs, it displays as
> > > follows. It's better to add a newline for easy reading.
[]
> > > diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
[]
> > > @@ -232,12 +232,16 @@ static int set_param_str(const char *val, const struct kernel_param *kp)
> > >  static int get_param_str(char *buffer, const struct kernel_param *kp)
> > >  {
> > >  	action_fn fn = (action_fn) kp->arg;
> > > -	int       rv;
> > > +	int rv, len;
> > >  
> > >  	rv = fn(NULL, buffer);
> > >  	if (rv)
> > >  		return rv;
> > > -	return strlen(buffer);
> > > +
> > > +	len = strlen(buffer);
> > > +	len += sprintf(buffer + len, "\n");
> > 
> > sprintf is kind of overkill to stick a \n on the end of a line.  How
> > about:
> > 
> > 	buffer[len++] = '\n';
> > 
> > Since you are returning the length, you shouldn't need to nil terminate
> > the string.

You never quite know for sure so I suggest making
the string null terminated just in case.

i.e.:

	buffer[len++] = '\n';
	buffer[len] = 0;




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
