Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C9328675A
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC7-0008Jd-7N; Wed, 07 Oct 2020 18:29:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <broonie@kernel.org>) id 1kPTjv-0002GM-L1
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 16:53:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cdtlGmr+JsQX/oBf9FaTWQmoVSCIm/6b+YrbFJBjqds=; b=i6Mgx19kRLeddc5Aoxvo7UAyiF
 SOUGxIoACKXgsAE1GVY2zfqaV1kljMaUSi+kENk5jB4pfsS3RM+BjJ3BXj63SB/BRLNW8FVq13NBx
 Lzj9lxD9dcOaCPnXmwzBQuMTJYaenPOP4b2owYlppLmXLStQ60MLyLb373Jpqdfssnz0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cdtlGmr+JsQX/oBf9FaTWQmoVSCIm/6b+YrbFJBjqds=; b=JcAxlNDf0+Nnlf0gbDZohtNJFp
 j7e3ACUtpqSaUc8ERtXoQD9DFF9jnF5pSpD+UhrHpVdS0UrRnt2nMV1tBxFkoH4R8HYTluRrol7f6
 sY6v4KAcYf0cj/P9a0wKM1T++Gv29rmeZcBId52TVw4/7vXYsTwqgVFu2wMOexBYfXuc=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kPTjo-003aCB-A6
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 16:53:31 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7BDA1207BC;
 Mon,  5 Oct 2020 16:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601916790;
 bh=p/E99tTjql4QstxaT4SSl5drfyNj4h+kQn/1L+FU6Hg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gBC/IzIeywxmI9gsb/JTsx+zOOUJIooFw3wfYC06TBiHzICVtnlgNaAv/yO1EfA51
 zVseZLj5T0M70hmLa6qq17YAe111X+Q9rT1NlLPW8KVTi2SkXaQsGts5rIE+F43U3z
 nybuOkwnpLc2tf4yEu29xxvUOBIsDUDyDKfTSVTQ=
Date: Mon, 5 Oct 2020 17:52:06 +0100
From: Mark Brown <broonie@kernel.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20201005165206.GA2440@sirena.org.uk>
References: <160132172369.55460.9237357219623604216.b4-ty@kernel.org>
 <b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com>
 <20200929113745.GB4799@sirena.org.uk>
 <db26d49401dc0bd6b9013a603a155f9827f404a4.camel@perches.com>
 <20201001110150.GA6715@sirena.org.uk>
 <f44d19ad596f261c0287c9ab18c45161003efb43.camel@perches.com>
 <20201003191501.o56tqq63d2buq5ox@chatter.i7.local>
 <alpine.DEB.2.22.394.2010032118420.2741@hadrien>
 <20201003193137.z2bpwzlz5a66kkex@chatter.i7.local>
 <9ab43333596f08abbbbbf1fa8cdf1ded4b65af2a.camel@perches.com>
MIME-Version: 1.0
In-Reply-To: <9ab43333596f08abbbbbf1fa8cdf1ded4b65af2a.camel@perches.com>
X-Cookie: God is real, unless declared integer.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kPTjo-003aCB-A6
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:28 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/18] use semicolons rather than
 commas to separate statements
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 David Lechner <david@lechnology.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-block@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, linux-crypto@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, tools@linux.kernel.org
Content-Type: multipart/mixed; boundary="===============8986202313443499622=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8986202313443499622==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 03, 2020 at 12:43:13PM -0700, Joe Perches wrote:
> On Sat, 2020-10-03 at 15:31 -0400, Konstantin Ryabitsev wrote:

> > I'm worried that this can get unwieldy for series of 50 patches where 4=
9=20
> > got applied. Would the following be better:

=2E..

> > A subset of these patches was applied to
> >=20
> >   https://...
> >=20
> > Thanks!
> >=20
> > [5/18] regmap: debugfs:
> >        commit:

It's definitely an improvement but TBH I'm not sure how much it's going
to help those struggling to parse the current messages.

> > I think this is a better solution than potentially flooding everyone=20
> > with 49 emails.

I would tend to prefer cutting down on mail volume but I don't think
there's any way to keep everyone happy with this stuff.

> I think it would be better to reply individually as
> the likelihood that the maintainer skips just a few
> patches of a large series is relatively low.

It's not at all unusual for driver updates to both add new DT bindings
(either for entirely new drivers or new properties/compatibles for
existing drivers) and also have DTS file updates using those bindings,
these go via separate trees.

--sdtB3X0nJg68CQEu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl97TzUACgkQJNaLcl1U
h9DI9Qf/dhOghwYGEqexRQ644ACI4w9j7rH7Z4qsTYl+rdj06q5wrcOFnyypjB/j
N/Qx3llsTbG0UagMLyGeuFi5bzhxALnrvmrbv8cBPI0/3jS2D7u22cD5m6toS+Tp
f08tgo7VkjfkB3QCZn9A7XGAPq3bEvoaCvFalxqGt0FPUw5kVGrboVa1dgJCzRL/
CtWXDQfG9vy5ZVs0cY+s+O9yvAbrZJyMPaKkeoa7dwnqzOQz1Ga4ADtUZsUWyieK
wuCO/HNGdf77CmSbOuG6BMrWi5SGoEtRmVO+w5NmYO1yOfnooSih3uWDR4H01xVg
3zFgbOHRZMIwAEzTfTqRA4vzPMXRQQ==
=wwYC
-----END PGP SIGNATURE-----

--sdtB3X0nJg68CQEu--


--===============8986202313443499622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8986202313443499622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8986202313443499622==--

