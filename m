Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5458B63E3F
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Jul 2019 01:07:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hkzCd-0003Hx-O7; Tue, 09 Jul 2019 23:07:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hkzCc-0003He-4G
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 23:07:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hDAj6zol3RaVmal+PtZQz5C2j+ZDGvpWtxUxeTzImJ8=; b=RIqm61e1YrJWpGH7zRJRiPvAgl
 fMDZCDrt+WoPMXJbk2G7dnMfNEsvCRPCxiQIJoWQVJ3H3TGMhQPYIHV98RWwprVn/At/Yzo7/HH3u
 EnC8weJ5maTAXkiIumfQv0US3GSEdM10TM8OYYKDgqDKwAytnXNXQ0bXBl7DF9N4Sibk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hDAj6zol3RaVmal+PtZQz5C2j+ZDGvpWtxUxeTzImJ8=; b=Xnr3+zzBzyF90GyIYmHm54tKxs
 5wZxMqW0w4VcvYMx4+EhqzKukmBKDYj/Zcr16ZI83VOolumu/3TE5+5ScF7n+g4+NcdRLit/aXqzI
 3TYp82Uyyaly/9v2M0INaHiYTVlpev4njbS5G623GvPkEMWkzkjbqYUr5VE60Z92YCO4=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hkzCZ-00D2ZG-Pq
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 23:07:13 +0000
Received: by mail-ot1-f66.google.com with SMTP id r21so214052otq.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 09 Jul 2019 16:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hDAj6zol3RaVmal+PtZQz5C2j+ZDGvpWtxUxeTzImJ8=;
 b=c6m5xpfxQePOMGTMsYC75i5UBzSjYBhlvZ3MlYPp0JvUpt63L071NtaOtqN98rxKXw
 McPekY6OcxyyirBZhgxqf5Iikis9pDkaaHNoyurXPt9wSrukxTLIZNOFB7Ze0FYL/sH9
 g7df6hKlhMCemc4cyOciGzP9CI2cPCt4Fiv/WViBjvVZYdj0nPJ2QxqXu0JI2ccoYdoQ
 oBpglV3I3RFQY/STUKoB24AhvddmVx1hFd+0KO1VYr/aO3U6O7ZQzHYEDifWltSQgMVg
 FyWqqmYRP6hkGTiCkmys2PtaWZ6rGRrektJaMRMibQ01jEKMABHmf0Np9iBS0prT3/tM
 XGPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=hDAj6zol3RaVmal+PtZQz5C2j+ZDGvpWtxUxeTzImJ8=;
 b=Qap8h+OklIIhquftXQr9ux39nlYPoK5arO4IuFmNVLZZUWYrIyJXhha30yWUzU5q4K
 KNtOUDDyFm95kxBQpRy7xBL615/tOJVDTq4ql+M1Z7G6HSRqq6d4/wBY6kqQS274L3WO
 pHIPgO7dE5EZaE/rgc4TJPPH113rI2iYLFi4L9Xf96w4ODOZ1eHgfqBH7Cp+WEQAvJg7
 0srcGKAl5kUe+qxb6LG4R5CZ3CIKvrasSy9ruo2NgDagli8XBHCOwJ1zvjPQjqWh3wUk
 +70RDxBSV1KCGViXLt6FAR7RbjRSMaJT8Wy2D5R9Pa0Q8MILb3zNwhH537SDgLnbtpi5
 DtIg==
X-Gm-Message-State: APjAAAUXU9PcZUaWUxJpbUQXxXbiWuaNBXTZhoA9wgR0pMb5M/cHIj/i
 CpvvvX1oaxE7I9mtlBJ9dw==
X-Google-Smtp-Source: APXvYqx44AfZvFUNQHdYp8jx1vE4YVQXTsj60CNgH+TxZdsEHIMZHlpFqaSGemwRf80J2HkYb6dEbg==
X-Received: by 2002:a9d:560b:: with SMTP id e11mr7098546oti.129.1562713625802; 
 Tue, 09 Jul 2019 16:07:05 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id g22sm198294otn.69.2019.07.09.16.07.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 16:07:05 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:6c89:b9b3:d6b4:3203])
 by serve.minyard.net (Postfix) with ESMTPSA id E963F1805A4;
 Tue,  9 Jul 2019 23:07:04 +0000 (UTC)
Date: Tue, 9 Jul 2019 18:07:03 -0500
From: Corey Minyard <minyard@acm.org>
To: Tejun Heo <tj@kernel.org>
Message-ID: <20190709230703.GF19430@minyard.net>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
 <20190709221147.GM657710@devbig004.ftw2.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709221147.GM657710@devbig004.ftw2.facebook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hkzCZ-00D2ZG-Pq
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

On Tue, Jul 09, 2019 at 03:11:47PM -0700, Tejun Heo wrote:
> On Tue, Jul 09, 2019 at 04:46:02PM -0500, Corey Minyard wrote:
> > On Tue, Jul 09, 2019 at 02:06:43PM -0700, Tejun Heo wrote:
> > > ipmi_thread() uses back-to-back schedule() to poll for command
> > > completion which, on some machines, can push up CPU consumption and
> > > heavily tax the scheduler locks leading to noticeable overall
> > > performance degradation.
> > > 
> > > This patch replaces schedule() with usleep_range(100, 200).  This
> > > allows the sensor readings to finish resonably fast and the cpu
> > > consumption of the kthread is kept under several percents of a core.
> > 
> > The IPMI thread was not really designed for sensor reading, it was
> > designed so that firmware updates would happen in a reasonable time
> > on systems without an interrupt on the IPMI interface.  This change
> > will degrade performance for that function.  IIRC correctly the
> > people who did the patch tried this and it slowed things down too
> > much.
> 
> Also, can you point me to the exact patch?  I'm kinda curious what
> kind of timning they used.

I believe the change was 33979734cd35ae "IPMI: use schedule in kthread"
The original change that added the kthread was a9a2c44ff0a1350
"ipmi: add timer thread".

I mis-remembered this, we switched from doing a udelay() to
schedule(), but that udelay was 1us, so that's probably not helpful
information.

-corey

> 
> Thanks.
> 
> -- 
> tejun
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
