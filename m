Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F88D348807
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Mar 2021 05:46:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lPHt4-0000Wn-F1; Thu, 25 Mar 2021 04:46:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lPHt2-0000We-Kf
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Mar 2021 04:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4w1e+1zT1/1gvv77on8/kjBD8912C5XODYMWq0HdWNs=; b=YsCU24dpHTo6WM+gioB4yRPDRF
 Nj4cZ8M2R3OKc1+1MMas4AeAYuU5TCEk5i2SLyw87X12tA2od2ZVc9jdYJI4gyiXztJnnVJRezQPq
 JgzrnMzvoTuT3H0GAqTc1giz7viXg6MrZzA+zVA3Mrtayzq93p1xA8PaKVmpggItNlFE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4w1e+1zT1/1gvv77on8/kjBD8912C5XODYMWq0HdWNs=; b=O4fQw5IPOrQxQZz0tDyH+59PJ1
 WgvCsdT8Ke5Gs3Be7W2pyzC7BtuRaHzz66b32NaWVnZFVfVn4Mb8VOo2NTzjFQvuBPRU8qosnebMW
 pKrxCtkaOQ+7cTxRNtHbXj20AwrSxStyA0BaCyezuEp4lzyENhD4V9yhMcFITqpthHAQ=;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lPHsx-0001Sv-6I
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Mar 2021 04:46:24 +0000
Received: by mail-oi1-f174.google.com with SMTP id n8so860899oie.10
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Mar 2021 21:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=4w1e+1zT1/1gvv77on8/kjBD8912C5XODYMWq0HdWNs=;
 b=QWel0mbEfPaL96l2ZePEdQtgwQpZ8aLhpWXg2EcazWlPqYTemYv86lbU4ka9WAoSiZ
 +mDmsLinTU9LWHTOCtE2Ov2hFT9Etrtgfc481aiq89RG1LFARQ0R/SbPe6MzL8aRK2S/
 6JGrULYW1+xSTIziq2ocEbxJYIP+sziWzLyvTtpLQZVrepXrHDCM8oVBeNTuxlxpl9T8
 PGytOAdBimqcMIiGLktiQ6Q4zC7ZwmlGWL5UinSpKl9Z/jZu7Gme0xhjMNol+cFhV/C7
 Kwagf0K44UrpQKthH/An9T8UQZm6ns7Yj1mi0anD51XSyeDdDuXCtwncJ+5EKOTkj69K
 it6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=4w1e+1zT1/1gvv77on8/kjBD8912C5XODYMWq0HdWNs=;
 b=JHQWv4Cxh0EVjfy2SGg732dqAp+LjoPSL15w42r4cZVzdKVSq/DUAhRNYc47C4WysZ
 NQqcsg4/XdnAVPFQ+DcrqyVXralXLC28vehtbcj1wF4pkjhFWKoR1+zFklc24+QwMSLP
 WNNJYkoEOOkRM07ire4pQrpfMGN+/rZJBW7VoNZT5kllxAPS0P2lYrjJuwQqxS1HAfNn
 M5WTYEmzJPA5EkkyJ7jI+eRBhjuGUrzmeDs0Q3UL4UGuobw0gX8ufwa8KKHBIfrWja4b
 q3ttlpuodcRvwokCjcbuXVN7A2iumnHgsPIEF4maHHxnLA6nRxXhQYYq1rh3lO3JNlKn
 grYQ==
X-Gm-Message-State: AOAM5308Dvj5TaInU9pWyTJJGKJULXetuckYP/j9Ldl27o5UKOcmn1yK
 FS7tFi0yypIS7n33WOAE8MJYVdRvBiE2
X-Google-Smtp-Source: ABdhPJxl08mrnJp4XSd4AgtBtvkaTi+Hja8Y/RJ16jJRD3JUBYXYLP5+Zj+w64TugEdJsnf08w5Fag==
X-Received: by 2002:aca:ac8d:: with SMTP id v135mr4787590oie.2.1616647573492; 
 Wed, 24 Mar 2021 21:46:13 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id e18sm1117825otf.2.2021.03.24.21.46.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 21:46:12 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:617a:549:42df:aa15])
 by serve.minyard.net (Postfix) with ESMTPSA id D961118004D;
 Thu, 25 Mar 2021 04:46:11 +0000 (UTC)
Date: Wed, 24 Mar 2021 23:46:10 -0500
From: Corey Minyard <minyard@acm.org>
To: Maneesh Singhal <mnshsnghl@gmail.com>
Message-ID: <20210325044610.GM507977@minyard.net>
References: <CAMp8WcrSvfm8445aGnE5AJ+qPB7OQB+PUL5ugCDfcvD6m=jBBg@mail.gmail.com>
 <20210325040722.GL507977@minyard.net>
 <CAMp8WcoC5Z7iwEVgtO_b0f3QdJ7ay4g4GqkyrZVG5w3C5W8YDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMp8WcoC5Z7iwEVgtO_b0f3QdJ7ay4g4GqkyrZVG5w3C5W8YDw@mail.gmail.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.174 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.174 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lPHsx-0001Sv-6I
Subject: Re: [Openipmi-developer] Getting 16777411 (Timeout) error from IPMI
 code
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Mar 25, 2021 at 10:07:00AM +0530, Maneesh Singhal wrote:
> Thanks for responding Corey. Actually I figured out what was the issue. The
> password that got passed was wrong due to programmatic error, but then I
> was assuming IPMI library to return me authentication kind of error instead
> of timeout. Isnt that correct expectation ?

It depends.  I think most BMCs will ignore packets with authentication
issues, so the client can't tell if it's a password issue or a
non-existent BMC.

-corey

> 
> Thanks
> 
> On Thu, Mar 25, 2021 at 9:37 AM Corey Minyard <minyard@acm.org> wrote:
> 
> > On Wed, Mar 24, 2021 at 08:08:05PM +0530, Maneesh Singhal wrote:
> > > Hello Team
> > >
> > > We built our code based on ipmicmd.c (The ipmi specifics are all same).
> > The
> > > commands that we are using are Power On (0x01) and Power Off (0x00) and
> > we
> > > are facing 16777411 error which I believe is timeout error.
> > > I tried debugging it through, but no success how and where I am getting
> > > timeout. Moreover, I rebooted the host multiple times, and still the
> > > problem persists.
> >
> > I assume you can issue these commands successfully with ipmicmd?
> >
> > -corey
> >


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
