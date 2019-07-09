Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3F863E32
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Jul 2019 01:01:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hkz7T-0001fK-LR; Tue, 09 Jul 2019 23:01:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hkz7S-0001fD-8Z
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 23:01:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PeGKkIn3nmmMYef/FrqOaIDK6KPh8SlUVgUINlK5aBA=; b=C9NKtU720HHnGoAeYyPk2K/b/j
 kIoKO5Kg7t0S7LDSWHxkjK7iviQLdfQ7h9iZcZTvCJuqKOfOFnj5L0uQ1yydpjwhjQzPz5AGsxEnb
 wWhfClng1kPEbTDvFQz3quySRGEx9m3/0ikvAmewvmNwehP2tL/YDBsAA7yh+hUOCv0Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PeGKkIn3nmmMYef/FrqOaIDK6KPh8SlUVgUINlK5aBA=; b=OGvBC9YQRHDUgI8Cb1po8A38//
 VuOE08DQ0sAVroiGd8pSKnPNiGVJYgrIBAelzGDui1xmvLT0tQXs6og/FljQuJSH4K30WSV4YjHMV
 U3DpcfPzrmLE5zISCLHLcFOJHa/wrkeLoLKmLq9GhWBPFYAzcXLZaxfVszJyhj+mTkLo=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hkz7R-00DqnJ-22
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 23:01:54 +0000
Received: by mail-ot1-f65.google.com with SMTP id r21so202118otq.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 09 Jul 2019 16:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PeGKkIn3nmmMYef/FrqOaIDK6KPh8SlUVgUINlK5aBA=;
 b=KxZvY3uDE+LA1zWbKYAIprZHLZUQ5yL0JDRF61UdQRs6F6+ZZWyYE3QAf3fonjjMiC
 k7+rt8eMtGL0zo/mNYdXeKEuvYsNUYrVICrsueVDI6WLq0QCs/PpjGvnr73nJnNrMg4w
 laetoXdGTuHiycAzEp23FC7rTooqVSR6+LvB3Pc23tUHZfdrlvY/LkbfD218f1k3aI/K
 MJIRLaBNLZBv6rJAemNSN661UvwfmPkjBznMRgCzA5H9sOzJaurd4L4Gn7CP8VI0aE/V
 +R1DATzlPbAlBeQl4VHJNphaaCJHZZq89Ydbsn4tMD5HaC6pQFPYGcNgiEcUP9Cw7R4u
 rwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=PeGKkIn3nmmMYef/FrqOaIDK6KPh8SlUVgUINlK5aBA=;
 b=lRJmCaLfFlcQ+sw3H3l2Ao3qQTTSudxfS9H8WvWPeld0cnpzfc684AW2SIAdZSAGS3
 N2bXESW04qRCBUn1/HCfoeU6FAIJp7TO0cv2urz+ePmG7TYUiQ+p8BPHdhntD7ZP0+Ph
 J8Yn0p2LaK92aO+TxOAmIlVXN2hOxRHmM5YkWAXbTNVDOKtmWikSX33xi0NAazzy/wWR
 ZsOhKfK8Sa4t3b5Yyjn/WCcws8qni8Ec0luxggD6+Pp4Il/L+L4Ry5xBl67I6TbWm1MF
 IOAb9p9D8AUQJJ3d28Rl3mBRNlKgybeejlaK5c5SmTo7srrXWq1tKxlKB8ZsnWgMOIlG
 Crng==
X-Gm-Message-State: APjAAAWJbG0rF2LuWb6ypcalAG6okNfGyjRT1v3u35VzgidpJugKxkRX
 o8ywyKJJIoTgd1FlCHG37g==
X-Google-Smtp-Source: APXvYqydYtXUkGchDKV5xlYEDRn9FIHtYBqR7QLRy7lk7t0PzcZHXrxmc78Y3gT4/Ha5gG28gBs3Xg==
X-Received: by 2002:a05:6830:12c7:: with SMTP id
 a7mr20303973otq.284.1562713307015; 
 Tue, 09 Jul 2019 16:01:47 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id m31sm247003otc.7.2019.07.09.16.01.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 16:01:46 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:6c89:b9b3:d6b4:3203])
 by serve.minyard.net (Postfix) with ESMTPSA id 131591805A4;
 Tue,  9 Jul 2019 23:01:46 +0000 (UTC)
Date: Tue, 9 Jul 2019 18:01:44 -0500
From: Corey Minyard <minyard@acm.org>
To: Tejun Heo <tj@kernel.org>
Message-ID: <20190709230144.GE19430@minyard.net>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
 <20190709220908.GL657710@devbig004.ftw2.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709220908.GL657710@devbig004.ftw2.facebook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
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
X-Headers-End: 1hkz7R-00DqnJ-22
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

On Tue, Jul 09, 2019 at 03:09:08PM -0700, Tejun Heo wrote:
> Hello, Corey.
> 
> On Tue, Jul 09, 2019 at 04:46:02PM -0500, Corey Minyard wrote:
> > I'm also a little confused because the CPU in question shouldn't
> > be doing anything else if the schedule() immediately returns here,
> > so it's not wasting CPU that could be used on another process.  Or
> > is it lock contention that is causing an issue on other CPUs?
> 
> Yeah, pretty pronounced too and it also keeps the CPU busy which makes
> the load balancer deprioritize that CPU.  Busy looping is never free.
> 
> > IMHO, this whole thing is stupid; if you design hardware with
> > stupid interfaces (byte at a time, no interrupts) you should
> > expect to get bad performance.  But I can't control what the
> > hardware vendors do.  This whole thing is a carefully tuned
> > compromise.
> 
> I'm really not sure "carefully tuned" is applicable on indefinite busy
> looping.

Well, yeah, but other things were tried and this was the only thing
we could find that worked.  That was before the kind of SMP stuff
we have now, though.

> 
> > So I can't really take this as-is.
> 
> We can go for shorter timeouts for sure but I don't think this sort of
> busy looping is acceptable.  Is your position that this must be a busy
> loop?

Well, no.  I want something that provides as high a throughput as
possible and doesn't cause scheduling issues.  But that may not be
possible.  Screwing up the scheduler is a lot worse than slow IPMI
firmware updates.

How short can the timeouts be and avoid issues?

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
