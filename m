Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F116380FD9
	for <lists+openipmi-developer@lfdr.de>; Mon,  5 Aug 2019 02:48:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1huRAa-00046c-Qx; Mon, 05 Aug 2019 00:48:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1huRAY-00046Q-UK
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Aug 2019 00:48:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wVRpJrgZ1O2Fju5cbM4E047p8yDD7x/0FjNTZOxLy8A=; b=ObqyvDVb+0ZEF9PSd/peAdO3GY
 OGLSfx5w6TTefMBJqKp0BQajwX3ngupticMaTWcKdgKg+2swLbVeFuqDYl8DrGR3FPpoO8fgxzUPG
 cAuHtaacYho8bozHcMSwER5Bs7pbsbeKwbXnWNkYQoSx4h3L9vuta/sTKJPCVjyVQN9Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wVRpJrgZ1O2Fju5cbM4E047p8yDD7x/0FjNTZOxLy8A=; b=ZiFKkuy1EAnxz+REprjf2FPDH3
 XrWM9vwtSYOzYeVY2gg8TQDzqzfoIMvSiNOeDqmxPYCiXt5uhfhCgUKNWlkBcD7YC2QYmdUJen3Fw
 HsWZx795som4TgYu9QGpgcYI8cNQJr3SM4SpYb55F+nW0dki+VyUFeve67aGD05TqJKo=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1huRAU-00B0YN-NA
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Aug 2019 00:48:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7C2CD16BF;
 Sun,  4 Aug 2019 20:48:00 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 04 Aug 2019 20:48:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=wVRpJrgZ1O2Fju5cbM4E047p8yDD7x/
 0FjNTZOxLy8A=; b=KouHbajvM5FTe5slhbI3hC2lczfuS90T9Jxq/k4GpPAXW3h
 HugHeepMQ+QxDJcrrchOQ1VAqXNNFEOsWL97R/IcAe4l+mbizw9iqtkDcoAFnh0X
 seovXUIddjx47kFX6hFXBChUSzl4ze9W+zwYf6TXXgerzeJGgvU1DZhbS849ImRW
 /e4b32jzTzIeNFRyg6IzoX8cazIY83I8yohFl+dB+vqZ3ArhdSa5iEsqHpAyPUDf
 QqCV6O7/ilnpb4umTPeM8OPTAA7jHW6hBNJCHSuHGVm68tQ3fCdd7MkD3RP8xwVv
 fQvZtmh0KefZECyo4KqXbwox/tR9OghhnevkT/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=wVRpJr
 gZ1O2Fju5cbM4E047p8yDD7x/0FjNTZOxLy8A=; b=kPaNfa3gItyPsgkEtYnPEx
 ZWMrlMf/0VEwKYOqlfEYuUQCJfH15DbnP92xDipWrPXCTKuXtJUhZp9pna73Lk4n
 bumeSKK+UCKZ9b0/Khnl2Qpch+VccyqQ61D3cUhfdjV8y5u625CIpWEP7oeHCLqZ
 HF/IE6IziAaee7ajhvZhxl5XNtTU2jrZuOzVu2ouldc/ttf7GAWnlNBNi15USOXD
 JjCl8mBXmXTvNVvT1u0esC1owINwkmXB1xS/Oxwri9zAP8JINhKpaK+FgPiMqV/x
 oYQtlnWxpakK5v0cPxb9Wyz5YmiLkU80urNmC8m/suDVSBJk5puhuMmf8oJqYQMA
 ==
X-ME-Sender: <xms:vHxHXae8zQkQoIXOFmhTlYGbWfRNpWOI-HINgXhGX2UygIWYbvuKZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddtiedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:vHxHXYdSMGHxjZ4pnB-Ih6FhwhszzhpideX8pQECYN7z2CciX5vnSg>
 <xmx:vHxHXWha17NCHarMxWIGvYsAQpQN_0u3dGGl-KAV-JwWc_BWf-pVHw>
 <xmx:vHxHXcT3yaRYfFFGevfhXKYxLtpI1CCuze7nBKJU72nktFY9vzBOIg>
 <xmx:wHxHXTjzDEJZKPlzisyKmdB0D309JcA8BJ-nH7F9fhiZii5hKAPq2A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id BC0C0E00A2; Sun,  4 Aug 2019 20:47:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-799-g925e343-fmstable-20190729v1
Mime-Version: 1.0
Message-Id: <5a6a22f8-d459-4aec-b69b-e49d096afa85@www.fastmail.com>
In-Reply-To: <CACPK8Xc4Vigeu1B1Su5392BSCSKfoEDqt_tiDtgKmNH5ucAvAg@mail.gmail.com>
References: <20190726053959.2003-1-andrew@aj.id.au>
 <CAL_JsqJ+sFDG8eKbV3gvmqVHx+otWbki4dY213apzXgfhbXXEw@mail.gmail.com>
 <fd8e57f0-aee2-403e-b6fb-76d0c18fe306@www.fastmail.com>
 <CACPK8Xc4Vigeu1B1Su5392BSCSKfoEDqt_tiDtgKmNH5ucAvAg@mail.gmail.com>
Date: Mon, 05 Aug 2019 10:18:21 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1huRAU-00B0YN-NA
Subject: Re: [Openipmi-developer] [RFC-ish PATCH 00/17] Clean up ASPEED
 devicetree warnings
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>, Corey Minyard <minyard@acm.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>, Xo Wang <xow@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Ken Chen <chen.kenyy@inventec.com>,
 Adriana Kobylak <anoo@us.ibm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?YangBrianC=2EW_=E6=A5=8A=E5=98=89=E5=81=89_TAO?=
 <yang.brianc.w@inventec.com>, openipmi-developer@lists.sourceforge.net,
 "Alexander A. Filippov" <a.filippov@yadro.com>, Tao Ren <taoren@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, Patrick Venture <venture@google.com>,
 John Wang <wangzqbj@inspur.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stefan M Schaeckeler <sschaeck@cisco.com>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Fri, 2 Aug 2019, at 15:21, Joel Stanley wrote:
> On Tue, 30 Jul 2019 at 01:09, Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > > > The bang-for-buck is in fixing up the KCS bindings which removes all-but-two of
> > > > the remaining warnings (which we can't feasibly remove), but doing so forces
> > > > code changes (which I'd avoided up until this point).
> > > >
> > > > Reflecting broadly on the fixes, I think I've made a mistake way back by using
> > > > syscon/simple-mfds to expose the innards of the SCU and LPC controllers in the
> > > > devicetree. This series cleans up what's currently there, but I have half a
> > > > mind to rev the SCU and LPC bindings to not use simple-mfd and instead have a
> > > > driver implementation that uses `platform_device_register_full()` or similar to
> > > > deal with the mess.
> > > >
> > > > Rob - I'm looking for your thoughts here and on the series, I've never felt
> > > > entirely comfortable with what I cooked up. Your advice would be appreciated.
> > >
> > > The series generally looks fine to me from a quick scan. As far as
> > > dropping 'simple-mfd', having less fine grained description in DT is
> > > generally my preference. It comes down to whether what you have
> > > defined is maintainable. As most of it is just additions, I think what
> > > you have is fine. Maybe keep all this in mind for the next chip
> > > depending how the SCU and LPC change.
> >
> > Okay, I think the timing of that suggestion is good given where things are with
> > the AST2600. I'll keep that in mind.
> >
> > Consensus so far seems to be that the series is fine. I'll split it up and send out
> > the sub-series to the relevant lists with the acks accumulated here.
> 
> The series look good. I suggest posting the KCS bindings and driver
> changes as their own series to go through the IPMI tree.

Yeah, that was the plan.

> 
> Please add my tag to all the patches except the OCC one, which I need
> to do some investigation in to.
> 
> Reviewed-by: Joel Stanley <joel@jms.id.au>

Thanks, will do.

> 
> The others can go via the aspeed tree. Perhaps post them as their own
> series too so I don't get confused and apply the wrong ones. That way
> if Rob wants to send his reviewed-by he can.

SGTM.

Cheers,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
