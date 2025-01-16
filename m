Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0F2A142AA
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jan 2025 20:58:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYW08-0001X3-5U;
	Thu, 16 Jan 2025 19:58:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tYW03-0001Ww-MD
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 19:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KX0PekS4oyZJN7vq29nBWyPFMEjESyyECU6yqKwIP9E=; b=fyO6C2ivblnV4NlGCdjldowySI
 YFqXknA+yvih7RSco6T6bEUi2/i+ZLBoId6gYKL/6oGntQBCmjWgyUkYvXoe1bydBoWIiBbT9iXrG
 MyZHj/gWmAjOb/qUmC7ItO8CqxWEbEfZtHmrkrAAbFgdycDY9wjoVSl2gVUhUNgKllOc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KX0PekS4oyZJN7vq29nBWyPFMEjESyyECU6yqKwIP9E=; b=hH9JpT7WYJEZerVRwN9xESdgpy
 XsQXvY/aTE8E/W7ivy/dtsMcaB5kx7hJUsag0CPkCDeUfr+pV9DaDKGl1Zv09i5X4iyv2VrdmRSNe
 FgsffnYlPHXkwU9DeLbuqwli3RjcxZlpzM1OVTy2958PreDGIXIpAYvRqOrA5isgsBpk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYW03-0007ha-RA for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Jan 2025 19:57:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C0EBE5C5E0F
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 16 Jan 2025 19:57:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E562AC4CEE7
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 16 Jan 2025 19:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1737057464;
 bh=BpGbL4CFfsflMGaBvp4j9m1dN/ZGd8uGCM2kddow5H8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aqj/PJ7JlbWZi20JPqqhgl4FtKBowEHKrr5py0QJZaT/h7NwbJLKWtfZF5HVJ+f01
 eaumhpfu06/SjCfeP4TGZg7LFj0jw5dpOxHBHmnfIZjWAOLq6Gictv0ymZ294BVo+6
 wZxDS8gqUVXCZFkkiyPfGqx6r+MImWIilKWs1HvUPklZ8YaFqKl3Gk24rjgg7ys+D2
 TpIs5/FNVV7ktyFEOULoBvnjU5NoveD+FaNRhRgWJYYvPlaC2gBzCYDaoTGt87wI8+
 WcnzI/xvOoCtspwq+cwpNhM8PyQ0GWcAnShRPgNtAGka16GTj2unoDYSF7vH1jGFbW
 mkYRd0WRyzITQ==
Received: by mail-lj1-f171.google.com with SMTP id
 38308e7fff4ca-30219437e63so25872651fa.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 16 Jan 2025 11:57:44 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCU/J/LUlrKgMLCrqBU9uI6fq0jYQPNQgfG3hqMMpLude+C19ALYlReuigMoF3tQH79PIBMlPb8cmJpZeWjaxwQzI/c=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxmZMBvHXInwfLH98rxeXgpXY1TCCd2odRAU1OA5Mbs5ulkntrM
 1r/1tjgFHt6r0/JS/7w/LMAMmuAIcQI2BJpynSNJN9tzz7HQgw3znEu/tJnJJrHEcHchEQOOTLi
 NjU/9Xeq26r3geCb054iAIV9J0g==
X-Google-Smtp-Source: AGHT+IE8PDn7axUoinBnTIfZ0cfMVPVQgH/bj9hTJDusIxJXQXf3Z2wDnrh+6FvWe+I1CQJPWkBXl12skSmq8p7UwQ8=
X-Received: by 2002:ac2:4e16:0:b0:540:2fe6:6a3c with SMTP id
 2adb3069b0e04-542abe955e7mr3496186e87.0.1737057463177; Thu, 16 Jan 2025
 11:57:43 -0800 (PST)
MIME-Version: 1.0
References: <20250114220147.757075-1-ninad@linux.ibm.com>
 <20250114220147.757075-4-ninad@linux.ibm.com>
 <173689907575.1972841.5521973699547085746.robh@kernel.org>
 <35572405-2dd6-48c9-9113-991196c3f507@linux.ibm.com>
In-Reply-To: <35572405-2dd6-48c9-9113-991196c3f507@linux.ibm.com>
Date: Thu, 16 Jan 2025 13:57:23 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK1z4w62pGX0NgM7by+QRFcmBadw=CRVrvF2vv-zgAExg@mail.gmail.com>
X-Gm-Features: AbW1kvaz7cz0JErISAQO978pEbpoqDGvU0yV8aV8M5Xy632yu2go8X9lmt54eW8
Message-ID: <CAL_JsqK1z4w62pGX0NgM7by+QRFcmBadw=CRVrvF2vv-zgAExg@mail.gmail.com>
To: Ninad Palsule <ninad@linux.ibm.com>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jan 16, 2025 at 9:04 AM Ninad Palsule <ninad@linux.ibm.com>
    wrote: > > Hi Rob, > > On 1/14/25 17:57, Rob Herring (Arm) wrote: > > On
   Tue, 14 Jan 2025 16:01:37 -0600, Ninad Palsule wrote: > > [...] 
 
 Content analysis details:   (-5.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [139.178.84.217 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [139.178.84.217 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tYW03-0007ha-RA
Subject: Re: [Openipmi-developer] [PATCH v5 03/10] dt-bindings: gpio:
 ast2400-gpio: Add hogs parsing
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
From: Rob Herring via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, minyard@acm.org,
 linux-aspeed@lists.ozlabs.org, netdev@vger.kernel.org, eajames@linux.ibm.com,
 linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch, edumazet@google.com,
 kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBKYW4gMTYsIDIwMjUgYXQgOTowNOKAr0FNIE5pbmFkIFBhbHN1bGUgPG5pbmFkQGxp
bnV4LmlibS5jb20+IHdyb3RlOgo+Cj4gSGkgUm9iLAo+Cj4gT24gMS8xNC8yNSAxNzo1NywgUm9i
IEhlcnJpbmcgKEFybSkgd3JvdGU6Cj4gPiBPbiBUdWUsIDE0IEphbiAyMDI1IDE2OjAxOjM3IC0w
NjAwLCBOaW5hZCBQYWxzdWxlIHdyb3RlOgo+ID4+IEFsbG93IHBhcnNpbmcgR1BJTyBjb250cm9s
bGVyIGNoaWxkcmVuIG5vZGVzIHdpdGggR1BJTyBob2dzLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1i
eTogTmluYWQgUGFsc3VsZSA8bmluYWRAbGludXguaWJtLmNvbT4KPiA+PiAtLS0KPiA+PiAgIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vYXNwZWVkLGFzdDI0MDAtZ3Bpby55YW1sICAgICAg
IHwgNiArKysrKysKPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+Pgo+
ID4gTXkgYm90IGZvdW5kIGVycm9ycyBydW5uaW5nICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIG9u
IHlvdXIgcGF0Y2g6Cj4gPgo+ID4geWFtbGxpbnQgd2FybmluZ3MvZXJyb3JzOgo+ID4KPiA+IGR0
c2NoZW1hL2R0YyB3YXJuaW5ncy9lcnJvcnM6Cj4gPgo+ID4KPiA+IGRvYyByZWZlcmVuY2UgZXJy
b3JzIChtYWtlIHJlZmNoZWNrZG9jcyk6Cj4KPiBJIGFtIG5vdCBzZWVpbmcgYW55IGVycm9yIGV2
ZW4gYWZ0ZXIgdXBncmFkaW5nIGR0c2NoZW1hLiBBbHNvIHRoaXMgbWFpbAo+IGFsc28gZG9lc24n
dCBzaG93IGFueSB3YXJuaW5nLiBJcyB0aGlzIGZhbHNlIG5lZ2F0aXZlPwoKSSBiZWxpZXZlIHRo
aXMgaGFwcGVucyB3aGVuIGEgcHJpb3IgcGF0Y2ggaW4gdGhlIHNlcmllcyBoYXMgYW4gZXJyb3Iu
CgpSb2IKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpP
cGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
