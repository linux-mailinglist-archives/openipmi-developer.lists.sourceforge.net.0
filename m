Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 380D164D32
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Jul 2019 22:11:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hlIwJ-0001BU-Tb; Wed, 10 Jul 2019 20:11:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hlIwI-0001BN-RS
 for openipmi-developer@lists.sourceforge.net; Wed, 10 Jul 2019 20:11:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C4Oo5mdvetUmxDbSUBL29GZ+Vehe4xWNg6RgKG4Gwt4=; b=gcx1moGkmEVRu/JiQnSZV4felv
 toSQgx7sjaAKImL2o/tRfKN92pke51cG+2YMq5QJC51sebZwfea+vHA5xRq9EvKfAl4eChVbzYrge
 02e7kuRab7dA16A9UReYxVdm0Km84n+zvJOauHzm9AHkUCN6Ee9BL0fPGIDPLW2Crh9U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C4Oo5mdvetUmxDbSUBL29GZ+Vehe4xWNg6RgKG4Gwt4=; b=kOxxaaTGZbI7hcmGzqfl9H31Cb
 9tpwfth2tTba1Ol9dD9LBYowUC2rUo7O7XPO4XopGWV8BTuzczQktxo89+LrxLIHzluE/Q3+ZpCi3
 WiEchCtw/WePhQc4rW/EP6tcDeRKD9HDYbMAH9WONGq5XbcJmNncZXwHjAUEDe4t0K84=;
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hlIwH-00FKBn-FO
 for openipmi-developer@lists.sourceforge.net; Wed, 10 Jul 2019 20:11:42 +0000
Received: by mail-oi1-f179.google.com with SMTP id e189so2624134oib.11
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 10 Jul 2019 13:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C4Oo5mdvetUmxDbSUBL29GZ+Vehe4xWNg6RgKG4Gwt4=;
 b=mXmGPoxjwHpfp3CLLd+9LSOoCKadt5E0qlN+U8wdZNRzV7JdqZ9Q0VhlT1bvP7tkY6
 +ub4J7BiIjLznFj6KqyIAhb6lIAEbHmU/UDdqQhn5KMJhN1SZtNdThiVHk0MjoOplHmD
 +gBCmRmU2/PxHPN55nPCadpD4MKnsVW8UOmYTQuDtq0OhnF4qI8As8VBoXuXzavOoLQa
 F2YJNJCRVr5xuHbe6YtvMRz/N/TS5mfd5JaDOVCuAkqx4Xk1zJWklfNxXTzLsS9pQuQp
 tlJ1SNp81XlS3Py7w3AVzbr/Wjr45MOYDkiXIaBqZ+gOdQJqf6w94mAzB5RRmCsBXaNn
 wPnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=C4Oo5mdvetUmxDbSUBL29GZ+Vehe4xWNg6RgKG4Gwt4=;
 b=QwhJk9zp+/C8Xm2z9YwW/NXIhqgxz8kZwl2TNhSCubyB1BdhWMsxW5AxZjRR2detnU
 gmkJR5pqoIqytwozcAcAZSMp4c6Nps0H2Noyv0Q0jfhtqbgnc921cHZ1ptDwgJMiCiWd
 KsSMyNasgBlivNTLunJAUuTlYoGqlQ61yeyYIFI2wwQjq8fyDL3UNlO62x64l/jLdmIY
 hkDlDiV/RWhaTOnRCLywIEBrj2Ld8fcApbI4JoT8wXGWp/5+eKedU3NKu5Bo4WjRSn27
 DVJIHn9zZ1VXlALqLQnjjvAIEMXTeglK+UiVDitHDbVxbKu1hQ5IVxs+7VHrcFha+iIf
 6S8Q==
X-Gm-Message-State: APjAAAVvKnYEpwvkI7SvUsyoWsmX6thQ2M3/JPMVf3wrASLVSOFwkqhT
 5OGvQX0+dAkTFScaan7cRg==
X-Google-Smtp-Source: APXvYqwluDUCiSXTRKCeP9btcWwoCO5Q93q4Z5o1gMibop9R2/B/lPFbj1yts8R/BE/ln2w4Cw4kMQ==
X-Received: by 2002:aca:be88:: with SMTP id o130mr116980oif.122.1562789495255; 
 Wed, 10 Jul 2019 13:11:35 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id k10sm1080434otn.58.2019.07.10.13.11.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 10 Jul 2019 13:11:34 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:8d86:5827:9904:bfb])
 by serve.minyard.net (Postfix) with ESMTPSA id 12F961800D1;
 Wed, 10 Jul 2019 20:11:34 +0000 (UTC)
Date: Wed, 10 Jul 2019 15:11:32 -0500
From: Corey Minyard <minyard@acm.org>
To: Tejun Heo <tj@kernel.org>
Message-ID: <20190710201132.GB3066@minyard.net>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
 <20190709220908.GL657710@devbig004.ftw2.facebook.com>
 <20190709230144.GE19430@minyard.net>
 <20190710142221.GO657710@devbig004.ftw2.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710142221.GO657710@devbig004.ftw2.facebook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.179 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hlIwH-00FKBn-FO
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si_intf: use usleep_range()
 instead of busy looping
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@fb.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jul 10, 2019 at 07:22:21AM -0700, Tejun Heo wrote:
> Hello,
> 
> > > We can go for shorter timeouts for sure but I don't think this sort of
> > > busy looping is acceptable.  Is your position that this must be a busy
> > > loop?
> > 
> > Well, no.  I want something that provides as high a throughput as
> > possible and doesn't cause scheduling issues.  But that may not be
> > possible.  Screwing up the scheduler is a lot worse than slow IPMI
> > firmware updates.
> > 
> > How short can the timeouts be and avoid issues?
> 
> We first tried msleep(1) and that was too slow even for sensor reading
> making it take longer than 50s.  With the 100us-200us sleep, it got
> down to ~5s which was good enough for our use case and the cpu /
> scheduler impact was still mostly negligible.  I can't tell for sure
> without testing but going significantly below 100us is likely to
> become visible pretty quickly.

What was the time to read the sensors before you did the change?
It depends a lot on the system, so I can't really guess.

> 
> We can also take a hybrid approach where we busy poll w/ 1us udelay
> upto, say, fifty times and then switch to sleeping poll.

I'm pretty sure we didn't try that in the original work, but I'm
not sure that would work.  Most of the initial spinning would be
pointless.

I would guess that you would decrease the delay and the performance
would improve linearly until you hit a certain point, and then
decreasing the delay wouldn't make a big difference.  That's the
point you want to use, I think.

What might actually be best would be for the driver to measure the
time it takes the BMC to respond and try to set the timeout based
on that information.  BMCs vary a lot, a constant probably won't
work.

And I was just saying that I wasn't expecting any big changes in
the IPMI driver any more...

> 
> Are there some tests which can be used to verify the cases which may
> get impacted by these changes?

Unfortunately not.  The original people at Dell that did the work
don't work there any more, I don't think.

I mostly use qemu now for testing, but this is not something you can
really simulate on qemu very well.  Can you do an IPMI firmware
update on your system?  That would be the easiest way to measure.

Thanks,

-corey

> 
> Thanks.
> 
> -- 
> tejun


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
