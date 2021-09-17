Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3622040F5AA
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Sep 2021 12:14:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mRAtA-0000Yq-N4; Fri, 17 Sep 2021 10:14:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <glance@acc.umu.se>) id 1mRAt6-0000Xz-A7
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Sep 2021 10:14:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JLy3WFhE7uIoC8YV6xJAwbZA8sTYB50Qb36XdXIFxLo=; b=arTPkBKBR16PYaoEBUBqe1MhN7
 +jQwtWchVsa2aUtBUdNRBMZ0oHU0yqumHQa+KoUahHWDQi3zaPzO/di/8VBCRnPWb+NISEyj5qBL1
 Jncs45NbcZRm9EDLmofrNwPMwwruTi2tQVdHSKRD7SHVwWZf64k+oG8clNg31TDnGLPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JLy3WFhE7uIoC8YV6xJAwbZA8sTYB50Qb36XdXIFxLo=; b=LmZuw5TQnlRlJGsM5h5CtPiKz7
 H54SQ5q9RKnfP3f6xqjEDQmXR09gqR/RsGguNBbHW6VC10r++PRtixL6MZNxBM+33zJ2jLWFnrhzb
 CvQT339aq2Y5PTZpxL2+R1unCbm07G5BttGhjU2S5BL8LDw5EFd2chfFl5VZxRUkYy3M=;
Received: from mail.acc.umu.se ([130.239.18.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mRAt1-0007zY-8l
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Sep 2021 10:14:31 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by amavisd-new (Postfix) with ESMTP id 8B11444B93;
 Fri, 17 Sep 2021 12:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=acc.umu.se; s=mail1;
 t=1631873660; bh=KztPZmU+5xTMHtUa0iCgg32W0diJaeLOK5SO08JfWFw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pFMxG27sGuPuviTQE11SXg1E9HF3VeSypxrjvnv2+ak8OO4GhgSCC29tedujcHtmH
 s3GhpqWq/ItBmJ4dgRVqkjFQEUE9R0Uo3yap9TlMcmvBSweNpp7w9wWeQmI923cOrr
 Aif6XmQwmOCTQLYwMNNcGpOME+U/nbmxjHuOMDF8ncO75CvHRHRL5d5Utu70Q5kTDb
 k5HB4RmsFViFqOgndKOLTuuL2j9hvN10mJv5Kja3rtY1DV8CPMF+/rxaFIaiTsPZ/M
 ifGhgctMZYzL881unYl5mmp8kBWhSAknHEH2ebEvjJlZaWI32M27GYjImNIOj/aj84
 20mgVeo6T1HuQ==
Received: by mail.acc.umu.se (Postfix, from userid 24471)
 id 246C344B97; Fri, 17 Sep 2021 12:14:20 +0200 (CEST)
Date: Fri, 17 Sep 2021 12:14:19 +0200
From: Anton Lundin <glance@acc.umu.se>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20210917101419.GE108031@montezuma.acc.umu.se>
References: <20210916145300.GD108031@montezuma.acc.umu.se>
 <20210916163945.GY545073@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210916163945.GY545073@minyard.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 16 September, 2021 - Corey Minyard wrote: > On Thu, Sep
 16, 2021 at 04:53:00PM +0200, Anton Lundin wrote: > > Hi. > > > > I've just
 done a upgrade of the kernel we're using in a product from > > 4.19 to 5.10
 and I noted a issue. > > > > It st [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [130.239.18.156 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [130.239.18.156 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: umu.se]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mRAt1-0007zY-8l
Subject: Re: [Openipmi-developer] Issue with panic handling and ipmi
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
Cc: openipmi-developer@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 16 September, 2021 - Corey Minyard wrote:

> On Thu, Sep 16, 2021 at 04:53:00PM +0200, Anton Lundin wrote:
> > Hi.
> > 
> > I've just done a upgrade of the kernel we're using in a product from
> > 4.19 to 5.10 and I noted a issue.
> > 
> > It started that with that we didn't get panic and oops dumps in our erst
> > backed pstore, and when debugging that I noted that the reboot on panic
> > timer didn't work either.
> > 
> > I've bisected it down to 2033f6858970 ("ipmi: Free receive messages when
> > in an oops").
> 
> Hmm.  Unfortunately removing that will break other things.  Can you try
> the following patch?  It's a good idea, in general, to do as little as
> possible in the panic path, this should cover a multitude of issues.
> 
> Thanks for the report.
> 

I'm sorry to report that the patch didn't solve the issue, and the
machine locked up in the panic path as before.


//Anton


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
