Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A3928673C
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC3-00087L-PP; Wed, 07 Oct 2020 18:29:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Julia.Lawall@inria.fr>) id 1kMcld-000500-Ns
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Sep 2020 19:55:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4LxCOpJ34UEMOBWkh8+Qd4/nYkwxlUMOcW4tVHmz9HQ=; b=R9DarcOJz5+CdBEbaAOv5sqOIm
 5GOqSB/uMPLJjiUGs4bAPiBLOD7eLbn7OcHjHyDg4gJc/pzUVkW81/V9b+gn0fSnfSqwWqGMyX+BD
 MlOL34ozmqrQSdnyRXhsrJBlIkBzj/eKnz7g8Zy8w8h6EBHLSr+Y7qPGihynEbUA2cIk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4LxCOpJ34UEMOBWkh8+Qd4/nYkwxlUMOcW4tVHmz9HQ=; b=UHpN/36bcIx0hkAo6xlPCIdeFs
 ayln8Qe94sged6xUDTBCuscGinsE9YiHaJH0ICbPar8zAAJFB9VrHFad/jYxuEy+p7d+sUYaTbQRM
 eInZOwLurv7NvSeXkEHnZ8IqpH1Xj7NdHU6TCQWB8e9qp8VqEVlmhFwoJlg2fb0Hv2Fo=;
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kMclY-0080sG-2i
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Sep 2020 19:55:29 +0000
X-IronPort-AV: E=Sophos;i="5.77,311,1596492000"; d="scan'208";a="360169486"
Received: from palace.rsr.lip6.fr (HELO palace.lip6.fr) ([132.227.105.202])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/AES256-SHA256;
 27 Sep 2020 21:55:11 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: linux-iio@vger.kernel.org
Date: Sun, 27 Sep 2020 21:12:10 +0200
Message-Id: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 1.9.1
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lip6.fr]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.134.164.104 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kMclY-0080sG-2i
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:29 +0000
Subject: [Openipmi-developer] [PATCH 00/18] use semicolons rather than
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
Cc: drbd-dev@lists.linbit.com,
 =?UTF-8?q?Valdis=20Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 David Lechner <david@lechnology.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-wireless@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-crypto@vger.kernel.org,
 Joe Perches <joe@perches.com>, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-acpi@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

These patches replace commas by semicolons.  This was done using the
Coccinelle semantic patch (http://coccinelle.lip6.fr/) shown below.

This semantic patch ensures that commas inside for loop headers will not be
transformed.  It also doesn't touch macro definitions.

Coccinelle ensures that braces are added as needed when a single-statement
branch turns into a multi-statement one.

This semantic patch has a few false positives, for variable delcarations
such as:

LIST_HEAD(x), *y;

The semantic patch could be improved to avoid these, but for the moment
they have been removed manually (2 occurrences).

// <smpl>
@initialize:ocaml@
@@

let infunction p =
  (* avoid macros *)
  (List.hd p).current_element <> "something_else"

let combined p1 p2 =
  (List.hd p1).line_end = (List.hd p2).line ||
  (((List.hd p1).line_end < (List.hd p2).line) &&
   ((List.hd p1).col < (List.hd p2).col))

@bad@
statement S;
declaration d;
position p;
@@

S@p
d

// special cases where newlines are needed (hope for no more than 5)
@@
expression e1,e2;
statement S;
position p != bad.p;
position p1;
position p2 :
    script:ocaml(p1) { infunction p1 && combined p1 p2 };
@@

- e1@p1,@S@p e2@p2;
+ e1; e2;

@@
expression e1,e2;
statement S;
position p != bad.p;
position p1;
position p2 :
    script:ocaml(p1) { infunction p1 && combined p1 p2 };
@@

- e1@p1,@S@p e2@p2;
+ e1; e2;

@@
expression e1,e2;
statement S;
position p != bad.p;
position p1;
position p2 :
    script:ocaml(p1) { infunction p1 && combined p1 p2 };
@@

- e1@p1,@S@p e2@p2;
+ e1; e2;

@@
expression e1,e2;
statement S;
position p != bad.p;
position p1;
position p2 :
    script:ocaml(p1) { infunction p1 && combined p1 p2 };
@@

- e1@p1,@S@p e2@p2;
+ e1; e2;

@@
expression e1,e2;
statement S;
position p != bad.p;
position p1;
position p2 :
    script:ocaml(p1) { infunction p1 && combined p1 p2 };
@@

- e1@p1,@S@p e2@p2;
+ e1; e2;

@r@
expression e1,e2;
statement S;
position p != bad.p;
@@

e1 ,@S@p e2;

@@
expression e1,e2;
position p1;
position p2 :
    script:ocaml(p1) { infunction p1 && not(combined p1 p2) };
statement S;
position r.p;
@@

e1@p1
-,@S@p
+;
e2@p2
... when any
// </smpl>

---

 drivers/acpi/processor_idle.c               |    4 +++-
 drivers/ata/pata_icside.c                   |   21 +++++++++++++--------
 drivers/base/regmap/regmap-debugfs.c        |    2 +-
 drivers/bcma/driver_pci_host.c              |    4 ++--
 drivers/block/drbd/drbd_receiver.c          |    6 ++++--
 drivers/char/agp/amd-k7-agp.c               |    2 +-
 drivers/char/agp/nvidia-agp.c               |    2 +-
 drivers/char/agp/sworks-agp.c               |    2 +-
 drivers/char/hw_random/iproc-rng200.c       |    8 ++++----
 drivers/char/hw_random/mxc-rnga.c           |    6 +++---
 drivers/char/hw_random/stm32-rng.c          |    8 ++++----
 drivers/char/ipmi/bt-bmc.c                  |    6 +++---
 drivers/clk/meson/meson-aoclk.c             |    2 +-
 drivers/clk/mvebu/ap-cpu-clk.c              |    2 +-
 drivers/clk/uniphier/clk-uniphier-cpugear.c |    2 +-
 drivers/clk/uniphier/clk-uniphier-mux.c     |    2 +-
 drivers/clocksource/mps2-timer.c            |    6 +++---
 drivers/clocksource/timer-armada-370-xp.c   |    8 ++++----
 drivers/counter/ti-eqep.c                   |    2 +-
 drivers/crypto/amcc/crypto4xx_alg.c         |    2 +-
 drivers/crypto/atmel-tdes.c                 |    2 +-
 drivers/crypto/hifn_795x.c                  |    4 ++--
 drivers/crypto/talitos.c                    |    8 ++++----
 23 files changed, 60 insertions(+), 51 deletions(-)


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
