Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2FE44245C
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 00:52:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhh6P-0006q5-4L; Mon, 01 Nov 2021 23:52:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1mhh6O-0006pz-4t
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9eouahAXCmBoP2fXcZKQUpZJtWrRZSQPICoQryeoVs0=; b=D1fPLaVyuuUSCvIzQZvExjzVoZ
 wJPpTDPEiq5Wk1c1srcDfRqJwt2uXlWh176sgcSN+dNQWrCr38lwSy3ELSsK+RTDbBxuTK8A3Bdkb
 7gshQE4dnPfymEu4ZjlxBo0gUbYvqZiDivUoDdn5XUEG6Tnc8WVQOxukF7tXmWwseNdk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9eouahAXCmBoP2fXcZKQUpZJtWrRZSQPICoQryeoVs0=; b=PSeV3XwWagaY58cqdSGfTzs1v8
 5jWMW1nlSWyo0Rs8TjQK/cqn1ByWcE1k15zjWYo3XteOwrN4HZBWYw0fAxUV9blAUOYFVSP/0M9XP
 yPXeZY2yHaE5M1HsohPLDlgP0+2UvatODNM3POV2KI27uZpPKYCz2QMglblL0TJMO+q8=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mhh6J-00DGel-EQ
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:52:30 +0000
Received: by mail-qk1-f181.google.com with SMTP id bj20so6902006qkb.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 01 Nov 2021 16:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9eouahAXCmBoP2fXcZKQUpZJtWrRZSQPICoQryeoVs0=;
 b=AFVyNJZZ2GFBhEFp9jbrLperb698Ftnk1xoNnGmqSgGs/cEcgQIc0XlsYnWYFEbn2i
 MHm2bG4qqyk3T+6a0Vm6nPyAzXmSIeeS/SziI5Q17Hpqzx0/PNMYYDN5D38K9COs73Xv
 Pllo859919J7Do7UjOmnglCU9QhF+XwULm7B0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9eouahAXCmBoP2fXcZKQUpZJtWrRZSQPICoQryeoVs0=;
 b=ucsNaJqeho1SMQQnkQMW3YZbHfrinrX5+zB6+N6BG3W985AyY5Sqp2Vprshjauo32c
 9mfEYEZpDFpupl83BcsIRyfXTS7jF6xqNxsUsi1fkLzUHxNH5IWVcPvwom3iPvAORbgC
 qKOYBG5XTFahlq7FaPzp9wzbhhLGfXqEwvHfdAYGFz4ipbcDHJupbOEmg3dGOvrAAu5i
 fPlkJCnJSq3t8G14nZ7LaddbfO6zg6NpEWvlz7QtK2+W0dPDXWxgf9/LtOLMkEXJQWCh
 21MZj0/W+Hy1tcPlU8YVToUisymzcvH3xLrcy2OgCMKEGov/YfGDpnBlqPi+99y9kODM
 RZ2g==
X-Gm-Message-State: AOAM533UesFxVjyLccYvxFFiVhcmb+yuTYCSmmkATn+XwoXQH3C48ejp
 mb4BhtBkzBHmMeblLITdJ1uRNOQsgqXAUd1KOXA=
X-Google-Smtp-Source: ABdhPJzNbKv43p0Q3hZwPiVHfSlsLzJt/pcc7KTOY+bO3Jb9HdrhFpv7DvOMO5z9FoUwNbsx+XNHEDl/oePzYk1NXHo=
X-Received: by 2002:a05:620a:4588:: with SMTP id
 bp8mr18564175qkb.292.1635810741609; 
 Mon, 01 Nov 2021 16:52:21 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-2-jae.hyun.yoo@intel.com>
 <CACPK8XcAN-SsKDS2E_Cnv=5-Rq=9sAWYyb88i2Ub-iX0WH6aZw@mail.gmail.com>
 <3b90b836-d35f-fe98-69b1-69ebcecf54ea@linux.intel.com>
In-Reply-To: <3b90b836-d35f-fe98-69b1-69ebcecf54ea@linux.intel.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 1 Nov 2021 23:52:09 +0000
Message-ID: <CACPK8XcR0zR10_dPOM0atyqU3TarkWZ9N4r0B94N56_gebjJaw@mail.gmail.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 1 Nov 2021 at 23:48,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
 wrote: > > > Reviewed-by: Joel Stanley <joel@jms.id.au> > > > > Do you need
 to update the bindings too? > > Hi Joel, > > Right, [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mhh6J-00DGel-EQ
Subject: Re: [Openipmi-developer] [PATCH -next 1/4] ARM: dts: aspeed: add
 LCLK setting into LPC IBT node
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@intel.com>, Cedric Le Goater <clg@kaod.org>,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 1 Nov 2021 at 23:48, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>
> > Reviewed-by: Joel Stanley <joel@jms.id.au>
> >
> > Do you need to update the bindings too?
>
> Hi Joel,
>
> Right, I have to update 'aspeed,ast2400-ibt-bmc.txt'. Will add update
> in v2. Thanks a lot for your review and for reminding me. :)

Note that they've moved to Documentation/devicetree/bindings/mfd/aspeed-lpc.yaml

You can find this commit in linux-next.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
