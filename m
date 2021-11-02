Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1949644260B
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 04:29:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhkUE-0005Mm-St; Tue, 02 Nov 2021 03:29:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1mhkUD-0005Mf-Jb
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 03:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LbZDx6RLiMrCpFDLIQL6rmuGnSugSGQ3Nvv9b+v8Ry4=; b=LL67tWNT/wekxqkLeEA1kxQmQI
 Ut+mfUUMaJD3fzM2TsfIMa9iUiNfhu9GOcj3Ue6aYz8AxqTIUarJnSJmF7RQLTxE5pQdy9jbjIPcT
 9GZ/uDTjuX0YIUJqHn6qS93acOlvMhXzMdOHzJmEzCux9U59N4FWthyr1hSXKQf6Gj84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LbZDx6RLiMrCpFDLIQL6rmuGnSugSGQ3Nvv9b+v8Ry4=; b=Zr0k8aLqbBFJK08udik8lDvDMj
 x11tbxL9A9KnsGEMjB7Lv0EfweRItahrnCsFlfKdbvwh69wUBVyB7Lb4PsZVJYbxleaA9MMhVgjP1
 4sOZzkg14vHjDi6qecyBEDvdN47UdumgAsRbV/zqJWB3JVCE633uFgFAvLb6ASlmpXHA=;
Received: from mail-qt1-f174.google.com ([209.85.160.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mhkU7-00DiXB-9I
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 03:29:20 +0000
Received: by mail-qt1-f174.google.com with SMTP id h4so17184302qth.5
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 01 Nov 2021 20:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LbZDx6RLiMrCpFDLIQL6rmuGnSugSGQ3Nvv9b+v8Ry4=;
 b=cPps30E1mKIRTCIRPCKk1MzXMjmCw+8/NnxEtqligTCGSQAdqEdZk5va84NsYgNItL
 RyVJ/ITqL9aA8wskWFq1pKuGXXXmuCF1qfHJ5jkSgimf+arTork/++r+6K75lFjds+WN
 DI32nXAnGIekBEv6cQ2OKUF7NwjJTuFvvwZ9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LbZDx6RLiMrCpFDLIQL6rmuGnSugSGQ3Nvv9b+v8Ry4=;
 b=jDbP+h+XN4qs2cbaCyA3ZFCHGUkOPfsgDoNYX1MVZig8+XLYUkc02pJ19AZigNM94O
 RdZWOvvUXFSP6z+q0w/X3NPbt+Njjk9jYcA7XiQSlzubbNlFiFtM95vW4OTs7P3QL2Ur
 5WOFLO/IGeyIjaY1K+7iBpSXHZxj4HsuvQu6nmWsoNoHqfa4VBTeiBPL6hfbJvjNYrMF
 FJAFCiQjWgaEIjxQuOaWmBSCj8MIkDgDUZdQO2o9jyFwZjqMkRawtRT9NGvnpmfP6B8o
 bWDUZzU0YcxEOQf5UK4TdslnnOb6Rl/SyeD5kXdQ4856bpPuwNTUJtTcYXcYivbwy+MG
 Tusw==
X-Gm-Message-State: AOAM533gyS6nyD0Nl4TSdh7XVM3zj8OzVza65ueq8SGNUFdEGvwSGlXE
 wkLyJ1pqmVOdIPlHmi4LHOkQa67B4cHyVs4OL8E=
X-Google-Smtp-Source: ABdhPJz/yhS9s3prGdIS4/h5cMOgyU9mocT/KpsW4wd3ZxMd0KgkaRpGR1li6TnoBvwaNd+ckUHx8iZKpGqxkLyskjg=
X-Received: by 2002:ac8:5cd5:: with SMTP id s21mr10724169qta.392.1635823749370; 
 Mon, 01 Nov 2021 20:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-5-jae.hyun.yoo@intel.com>
 <HK0PR06MB3779F8E273396ED805EE5D81918B9@HK0PR06MB3779.apcprd06.prod.outlook.com>
In-Reply-To: <HK0PR06MB3779F8E273396ED805EE5D81918B9@HK0PR06MB3779.apcprd06.prod.outlook.com>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 2 Nov 2021 03:28:57 +0000
Message-ID: <CACPK8XesLdb+Cbi3ZYrOahRHbXQi3L=cQXax=RV2=PrjiPQBew@mail.gmail.com>
To: ChiaWei Wang <chiawei_wang@aspeedtech.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2 Nov 2021 at 03:16,
 ChiaWei Wang <chiawei_wang@aspeedtech.com> wrote: > > Hi Jae,
 > > > From: linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org>
 On > > > > From: Jae Hyun Yoo <ja [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.174 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jms.id.au]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.174 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mhkU7-00DiXB-9I
Subject: Re: [Openipmi-developer] [PATCH -next 4/4] ipmi: kcs_bmc_aspeed:
 add clock control logic
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 Ryan Chen <ryan_chen@aspeedtech.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Corey Minyard <minyard@acm.org>, Andrew Jeffery <andrew@aj.id.au>,
 Rob Herring <robh+dt@kernel.org>,
 "jae.hyun.yoo@intel.com" <jae.hyun.yoo@intel.com>,
 Cedric Le Goater <clg@kaod.org>, Jenmin Yuan <jenmin_yuan@aspeedtech.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 2 Nov 2021 at 03:16, ChiaWei Wang <chiawei_wang@aspeedtech.com> wrote:
>
> Hi Jae,
>
> > From: linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org> On
> >
> > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> >
> > If LPC KCS driver is registered ahead of lpc-ctrl module, LPC KCS block will be
> > enabled without heart beating of LCLK until lpc-ctrl enables the LCLK. This
> > issue causes improper handling on host interrupts when the host sends
> > interrupts in that time frame.
> > Then kernel eventually forcibly disables the interrupt with dumping stack and
> > printing a 'nobody cared this irq' message out.
> >
> > To prevent this issue, all LPC sub drivers should enable LCLK individually so this
> > patch adds clock control logic into the LPC KCS driver.
>
> Have all LPC sub drivers could result in entire LPC block down if any of them disables the clock (e.g. driver unload).
> The LPC devices such as SIO can be used before kernel booting, even without any BMC firmware.
> Thereby, we recommend to make LCLK critical or guarded by protected clock instead of having all LPC sub drivers hold the LCLK control.
>
> The previous discussion for your reference:
> https://lkml.org/lkml/2020/9/28/153

Please read the entire thread. The conclusion:

https://lore.kernel.org/all/CACPK8XdBmkhZ8mcSFmDAFV8k7Qj7ajBL8TVKfK8c+5aneUMHZw@mail.gmail.com/

That is, for the devices that have a driver loaded can enable the
clock. When they are unloaded, they will reduce the reference count
until the last driver is unloaded. eg:

https://elixir.bootlin.com/linux/latest/source/drivers/clk/clk.c#L945

There was another fork to the thread, where we suggested that a
protected clocks binding could be added:

https://lore.kernel.org/all/160269577311.884498.8429245140509326318@swboyd.mtv.corp.google.com/

If you wish to use this mechanism for eg. SIO clocks, then I encourage
Aspeed to submit a patch to do that.

Cheers,

Joel


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
