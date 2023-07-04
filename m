Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC33747418
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Jul 2023 16:28:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qGh0g-0001Oy-OQ;
	Tue, 04 Jul 2023 14:28:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qGh0b-0001OX-Pt
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jul 2023 14:28:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N4R6luG93HjxPfObPcZTcu6qIcxDhgXDUA+lCxYcsSI=; b=BRtDniwHzVODfEgzS4ihhIddSo
 g+MlX1WXcqXjphu47pCsLn/JClFH+NwvLNL5lG8V47tDo+7bM86JMMClOe3SmAUuwSi4Qjev5t6P9
 zvqnkjHmiidwlv/ZLAXVgjvOBHl4yGHXl2MZCElonYEBfxzs68QHfnXW6atu40EeCCWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N4R6luG93HjxPfObPcZTcu6qIcxDhgXDUA+lCxYcsSI=; b=PRhAQeNsFpODStgFgrRKSufSrF
 +ALt3z5aLP32/06OpsLWmt9Qxae1xOI6tz7ap22xMbYGkIybluBiFg5g4pMsyD0KhykeE/q8yoB+8
 ty9QT3QlR4nUOrssmG3yKHKR1LZSg3oP8ZfBtzvHXJTAA4cgiiF4ODWdMmLFlhoj+26I=;
Received: from mail-yw1-f179.google.com ([209.85.128.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qGh0W-0001wF-Qd for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jul 2023 14:28:01 +0000
Received: by mail-yw1-f179.google.com with SMTP id
 00721157ae682-579ed2829a8so31242627b3.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 04 Jul 2023 07:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1688480871; x=1691072871;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=N4R6luG93HjxPfObPcZTcu6qIcxDhgXDUA+lCxYcsSI=;
 b=C5JP2ukxDAPmAKA6NIKf6hEZ2C3gBylwmmANY0V3PeAYaHs8NwLe2Kt6LxT5NkLeRO
 RvBEySrUxHpc3hRW8zGFXbLOjOkSXQ4EhaviPHv37ev50/kXRW/rkGPFik/K+MGP5JQz
 S9ptD9hM4lR6FOplQUCW6CFDFr9gdPKP4BxtHJjDqrrEXqPmAsNrvMobkHKUpqcm8whu
 sA+X3JfZTQ4qMtj6Iuwou/XkpddH8UGLqqconQyMTehLTQxmqvEzrfv6XB6G0nb0xIrO
 1CZILVDyhyoDUi4/L5SzEHCBT6pUy0R5idmXd/ait83I/VdZcTZOjcxtQHSYGlYQIMB/
 KS8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688480871; x=1691072871;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=N4R6luG93HjxPfObPcZTcu6qIcxDhgXDUA+lCxYcsSI=;
 b=OqIkAPKVDdGWl0BNTqJzaZFeCZ3IK3FekkZRDieRJhrMuKCLZHHWBxwUI5AocvaIOW
 fD/1Gvrtkx3I9Mc8c9hsH5sFE+7G35lO1AOgN4wwsPGSjcic/IvQHZ+BOF/oOK/KUuzn
 TbqibpsAC/Kl58zMIocc6S0V+iI8Q+XI2wzWmWeLV8G2+THpR8F3IQgboeYvIZ2tbWn/
 haFkLsJSCNuFhEkwHWQHE6emWiWcj1q9j2NOgeJfnKPWRAmCPdSP98b6HFyKkFHTMYJ1
 8q3MLvxP2lYZ8OpF+6eX40qFnQq9jTIw3b5kriIfLuRk40HQZnQqLmWLX73/VCe99kqp
 uTPg==
X-Gm-Message-State: ABy/qLYUCU6Wd1uepiXRMu4eGqpNKdJQj/abdOdRUe+GFNqojwoZnutS
 BidQy7kD44qLAAtfPhIzng==
X-Google-Smtp-Source: APBJJlE+jL5PoQn1d0xQeDZ1IrjBRWFO0wQcaRBkAUFB7DmhbAdpa6gM9td1SbWpAOXIhz5atXQkEA==
X-Received: by 2002:a0d:d74e:0:b0:578:5e60:dcc9 with SMTP id
 z75-20020a0dd74e000000b005785e60dcc9mr10295115ywd.10.1688480870923; 
 Tue, 04 Jul 2023 07:27:50 -0700 (PDT)
Received: from serve.minyard.net ([47.184.186.55])
 by smtp.gmail.com with ESMTPSA id
 x137-20020a0dd58f000000b00577374e8abasm2805974ywd.87.2023.07.04.07.27.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Jul 2023 07:27:50 -0700 (PDT)
Received: from mail.minyard.net (unknown [IPv6:2001:470:b8f6:1b::37a])
 by serve.minyard.net (Postfix) with ESMTPSA id 20FD91800E8;
 Tue,  4 Jul 2023 14:27:49 +0000 (UTC)
Date: Tue, 4 Jul 2023 09:27:47 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <ZKQsY3DXXDbxy0om@mail.minyard.net>
References: <20230627152449.36093-1-dg573847474@gmail.com>
 <ZJwd0UDKYcK9AvSf@mail.minyard.net>
 <9691d898-22a9-4902-871d-73f5dafabf86@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9691d898-22a9-4902-871d-73f5dafabf86@app.fastmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 30, 2023 at 10:31:02AM +0930,
 Andrew Jeffery wrote:
 > Hi Corey, Chengfeng, > > On Wed, 28 Jun 2023, at 21:17, Corey Minyard wrote:
 > > Indeed, this looks like an issue. > > > > Andrew, any [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qGh0W-0001wF-Qd
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix potential deadlock on
 &kcs_bmc->lock
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
Cc: Chengfeng Ye <dg573847474@gmail.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jun 30, 2023 at 10:31:02AM +0930, Andrew Jeffery wrote:
> Hi Corey, Chengfeng,
> 
> On Wed, 28 Jun 2023, at 21:17, Corey Minyard wrote:
> > Indeed, this looks like an issue.
> >
> > Andrew, any opinions on this?  The attached patch will work, the other
> > option would be to disable interrupts when calling
> > kcs_bmc_handle_event() in the timer handler.  But then you have to worry
> > about RT.
> 
> Right, I think we'd do best to not over-complicate things.
> spin_lock_irq{save,restore}() are the intuitive choice to me.
> 
> I'll follow up with R-b/T-b tags once I've booted the patch
> and done some testing.

Thanks.  This is in my for-next tree, I'd like to get this in the merge
window, which I believe ends this Sunday.

> >> This flaw was found using an experimental static analysis tool we are
> >> developing for irq-related deadlock.

Will this tool be available for general use?  It's obviously quite
handy.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
