Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5ieIDrD5Q2pImgoAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Jun 2026 19:15:28 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 593616E6D13
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Jun 2026 19:15:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b="eTl/qhZ2";
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=lcUb+usa;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=nTtkEBG7;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=G4V3OQDK;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:Date:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AofJ8i0K2Xxt6XpOna6FQnpes0vtF3fTFQFQGmSDyTo=; b=eTl/qhZ29h5rsyjnLMeZgyCMW2
	ww4Gn/+dqJF0DoExCdKiBCTZLlMUJYujwz1TWsIBsvPldrVsyK9c9d5U9oTveNrXaxrQwC+2bNOuB
	CooysENE+yUysv/9Zh1KIBLIWJOOXZcokG32jlOhVz5DXFVuONTSWqCF38JutbzDsXWY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wec3K-0002vl-F8;
	Tue, 30 Jun 2026 17:15:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <conor@kernel.org>) id 1wec3I-0002vc-Aj
 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Jun 2026 17:15:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zoCexdF8WAmj/A/cB9RD+x/uZadpQsC20Zx9sVby7Zs=; b=lcUb+usan744QR8gxqHLIzNQH3
 2VIlr+4T9Bj6Ij7aurvK1GY8RAGL/sJzZkc0CYlGaTPCsJOuXUBHob1Om8OJVJFSAR5LSX0GLmEgP
 9wBSnQtSjCQ2t2V227U6sxgPatu5qIy10NCKLu8vEt7VbouSOTKHOM5o+rovXWYaTAsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zoCexdF8WAmj/A/cB9RD+x/uZadpQsC20Zx9sVby7Zs=; b=nTtkEBG7rdWRnS5gUtQL4dE+vU
 TqZW0B+1kulFQH1ozbOFJp0xrdMVveDOS6WFXC/E7J0tNBijsIjgJucmIfc0Iwngw1WPUzzIxQzkK
 1iThQf52HZ90kMVc8mGzrge1VXi1eFo412yU+XZe6l4kc44ddd36uC87mmFTdnoJoEGw=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wec3G-0006PC-Rt for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Jun 2026 17:15:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 0E5824165B;
 Tue, 30 Jun 2026 17:15:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1BC21F000E9;
 Tue, 30 Jun 2026 17:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782839709;
 bh=zoCexdF8WAmj/A/cB9RD+x/uZadpQsC20Zx9sVby7Zs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=G4V3OQDK4LuGRepnI0nswNLNa/lKuAhTlsiY4H/ai3sTir+w0BkplZkG/88C1YjoE
 Ffdpg1MXKDTALoy7fWJHkV5zrAGmDMuCfZ4r3rU2LIGF2RAMIENOXc2420muOJmZQl
 wcYv8eysEx7vayF4lhA/q/SJt0VpKuDjgVWrVwzWfQDvkeIX6icpH0FEFRrq97NAbn
 uFtuWna5TSOULIZpfJCPupO92fBNo3m+AUaPlt7Bij+TgXJQb88ndD9BPaTwXxg6kc
 QPfxJokhSoTAtT2/0X9552Zd+fvO7iA5LXtk52p63kzZaqPP6LAp1VHVA34bI9L5Ph
 84iUzCm7/+6mQ==
Date: Tue, 30 Jun 2026 18:15:05 +0100
To: YC Hsieh <yc_hsieh@aspeedtech.com>
Message-ID: <20260630-privatize-flap-8b01761853eb@spud>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
 <20260629-aspeed-bt-bmc-multichannel-v1-3-fc23ee337f7a@aspeedtech.com>
 <20260629-bogus-vocation-db32e55a595f@spud>
 <TY0PR06MB6855F690BCCCA45172F3F0AD93F72@TY0PR06MB6855.apcprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <TY0PR06MB6855F690BCCCA45172F3F0AD93F72@TY0PR06MB6855.apcprd06.prod.outlook.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jun 30, 2026 at 02:24:52AM +0000, YC Hsieh wrote:
   > Email Confidentiality Notice > 免責聲明: > 本信件(或其附件)可能包含機密資訊，並受法律保護。如
    台端非指定之收件者，請以電� [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
X-Headers-End: 1wec3G-0006PC-Rt
Subject: Re: [Openipmi-developer] [PATCH 3/4] dt-bindings: ipmi: Add
 optional LPC properties to ASPEED BT devices
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
From: Conor Dooley via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Corey Minyard <corey@minyard.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0420942286784086887=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-8.71 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORGED_RECIPIENTS(0.00)[m:yc_hsieh@aspeedtech.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-aspeed@lists.ozlabs.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:krzk+dt@kernel.org,m:openipmi-developer@lists.sourceforge.net,m:linux-arm-kernel@lists.infradead.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20260515];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+,5:+];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[conor@kernel.org];
	TAGGED_RCPT(0.00)[openipmi-developer,dt];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,conductwatch.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 593616E6D13

--===============0420942286784086887==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GgAjwmP4KtDGuBGB"
Content-Disposition: inline

--GgAjwmP4KtDGuBGB
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 30, 2026 at 02:24:52AM +0000, YC Hsieh wrote:

> ************* Email Confidentiality Notice ********************
> =E5=85=8D=E8=B2=AC=E8=81=B2=E6=98=8E:
> =E6=9C=AC=E4=BF=A1=E4=BB=B6(=E6=88=96=E5=85=B6=E9=99=84=E4=BB=B6)=E5=8F=
=AF=E8=83=BD=E5=8C=85=E5=90=AB=E6=A9=9F=E5=AF=86=E8=B3=87=E8=A8=8A=EF=BC=8C=
=E4=B8=A6=E5=8F=97=E6=B3=95=E5=BE=8B=E4=BF=9D=E8=AD=B7=E3=80=82=E5=A6=82 =
=E5=8F=B0=E7=AB=AF=E9=9D=9E=E6=8C=87=E5=AE=9A=E4=B9=8B=E6=94=B6=E4=BB=B6=E8=
=80=85=EF=BC=8C=E8=AB=8B=E4=BB=A5=E9=9B=BB=E5=AD=90=E9=83=B5=E4=BB=B6=E9=80=
=9A=E7=9F=A5=E6=9C=AC=E9=9B=BB=E5=AD=90=E9=83=B5=E4=BB=B6=E4=B9=8B=E7=99=BC=
=E9=80=81=E8=80=85, =E4=B8=A6=E8=AB=8B=E7=AB=8B=E5=8D=B3=E5=88=AA=E9=99=A4=
=E6=9C=AC=E9=9B=BB=E5=AD=90=E9=83=B5=E4=BB=B6=E5=8F=8A=E5=85=B6=E9=99=84=E4=
=BB=B6=E5=92=8C=E9=8A=B7=E6=AF=80=E6=89=80=E6=9C=89=E8=A4=87=E5=8D=B0=E4=BB=
=B6=E3=80=82=E8=AC=9D=E8=AC=9D=E6=82=A8=E7=9A=84=E5=90=88=E4=BD=9C!
> =E4=BF=A1=E9=A9=8A=E7=A7=91=E6=8A=80=E4=BB=A5=E8=AA=A0=E4=BF=A1=E6=AD=A3=
=E7=9B=B4=E5=8E=9F=E5=89=87=E6=B0=B8=E7=BA=8C=E7=B6=93=E7=87=9F=E4=BC=81=E6=
=A5=AD=EF=BC=8C=E4=B8=A6=E5=B7=B2=E5=A7=94=E7=94=B1=E7=AC=AC=E4=B8=89=E6=96=
=B9=E5=85=AC=E6=AD=A3=E5=96=AE=E4=BD=8D=E5=8B=A4=E6=A5=AD=E7=9C=BE=E4=BF=A1=
=E5=8F=8A=E4=BF=A1=E9=A9=8A=E7=A7=91=E6=8A=80=E7=8D=A8=E7=AB=8B=E8=91=A3=E4=
=BA=8B=E4=BE=86=E7=AE=A1=E7=90=86=E5=8C=BF=E5=90=8D=E8=88=89=E5=A0=B1=E7=B3=
=BB=E7=B5=B1=EF=BC=8C=E5=A6=82=E5=90=84=E5=80=8B=E5=88=A9=E5=AE=B3=E9=97=9C=
=E4=BF=82=E4=BA=BA=E7=AD=89=E6=9C=89=E7=99=BC=E7=8F=BE=E4=BB=BB=E4=BD=95=E9=
=81=95=E6=B3=95=E5=8F=8A=E9=81=95=E5=8F=8D=E5=85=AC=E5=8F=B8=E5=BE=9E=E6=A5=
=AD=E9=81=93=E5=BE=B7=E3=80=81=E9=81=95=E5=8F=8D=E6=B3=95=E4=BB=A4=E6=B3=95=
=E8=A6=8F=E5=8F=8A=E5=B0=88=E6=A5=AD=E6=BA=96=E5=89=87=E3=80=81=E4=BA=A6=E6=
=88=96=E9=9C=B8=E5=87=8C=E5=8F=8A=E9=81=95=E5=8F=8D=E6=80=A7=E5=88=A5=E5=B9=
=B3=E7=AD=89=E4=B9=8B=E6=83=85=E4=BA=8B=EF=BC=8C=E8=AB=8B=E7=9B=B4=E6=8E=A5=
=E9=80=8F=E9=81=8E=E4=BB=A5=E4=B8=8B=E5=8F=AF=E9=81=B8=E6=93=87=E5=8C=BF=E5=
=90=8D=E4=B9=8B=E8=88=89=E5=A0=B1=E7=B3=BB=E7=B5=B1=E8=88=89=E5=A0=B1=EF=BC=
=8C=E5=86=8D=E6=AC=A1=E6=84=9F=E8=AC=9D=E6=82=A8=E5=8D=94=E5=8A=A9=E4=BF=A1=
=E9=A9=8A=E6=8C=81=E7=BA=8C=E9=82=81=E5=90=91=E6=B0=B8=E7=BA=8C=E7=B6=93=E7=
=87=9F=E3=80=82=E4=BF=A1=E9=A9=8A=E7=A7=91=E6=8A=80=E8=88=89=E5=A0=B1=E7=B6=
=B2=E7=AB=99=E9=80=A3=E7=B5=90=EF=BC=9Ahttps://secure.conductwatch.com/aspe=
edtech/
>=20
> DISCLAIMER:
> This message (and any attachments) may contain legally privileged and/or =
other confidential information. If you have received it in error, please no=
tify the sender by reply e-mail and immediately delete the e-mail and any a=
ttachments without copying or disclosing the contents. Thank you.
> ASPEED Technology is committed to sustainable business practices based on=
 integrity and honesty principles. In order to ensure that all information =
can be openly and transparently communicated, a third-party independent org=
anization, Deloitte and ASPEED Technology's independent directors, have bee=
n entrusted to manage the anonymous reporting system. If any stakeholders d=
iscover any illegal activities, violations of the company's professional et=
hics, infringements of laws and regulations, or incidents of bullying and g=
ender inequality, please directly report through the anonymous reporting sy=
stem provided below. We thank you for your assistance in helping ASPEED Tec=
hnology continue its journey towards sustainable operations: https://secure=
=2Econductwatch.com/aspeedtech/

Sort this out, it's not compatible with mailing lists.

--GgAjwmP4KtDGuBGB
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakP5mQAKCRB4tDGHoIJi
0sANAQDA/60UmVrLczKv6SoSmrQAAFOoThdWuBLoAD3P9T2y1QEA2X+Byuamqo3I
lYXK5bHUCYUvg75FNp5lunAzcWGfVwE=
=8JpS
-----END PGP SIGNATURE-----

--GgAjwmP4KtDGuBGB--


--===============0420942286784086887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0420942286784086887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============0420942286784086887==--

