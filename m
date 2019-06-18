Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D324A37F
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Jun 2019 16:10:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hdEon-0006RA-Jc; Tue, 18 Jun 2019 14:10:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robherring2@gmail.com>) id 1hdEom-0006R3-C6
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jun 2019 14:10:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ymzVRv+HbWASk9IbK9IR5jfXe4p30txsWn7MI2aWfko=; b=Ei/FwjYisRtl8w7qKhmU0qO6D0
 KTU+B1yy2UIdagWu5kqHYZYAgvyL8L+woO2fHVPs1h9ZcVRz4jBgtGNyKILpyAI9AXb+zrBNSj+xo
 CgAkAmkcCkc1mHdhlhS0/WEbIOVpDd1GFQLMeuKQUJi4e7zROnFnoArsxE3TbUfPDEUM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ymzVRv+HbWASk9IbK9IR5jfXe4p30txsWn7MI2aWfko=; b=kqg8ilH8+CPNix5o/CzwMVPMAR
 Fz6CEkuuJbAjnq8EtBrIWzoJP5WXZeA8BCCSoKFtF3nxsFvlwgxuNVTvONAk+UZi/ZjlK5MqlLylr
 ZNbTWlJ/w4hNwb+IN6+4Aroo0648YFLr791bFXVA9wAODS4D5n+fUZPMJEtg96YCOBmQ=;
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hdEoi-0033n3-W4
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jun 2019 14:10:36 +0000
Received: by mail-qk1-f195.google.com with SMTP id a27so8620001qkk.5
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 18 Jun 2019 07:10:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ymzVRv+HbWASk9IbK9IR5jfXe4p30txsWn7MI2aWfko=;
 b=pB3FaZmHHn7kAfgos3F6gNb2aNyvV/BXl+YkZPhRtXqaJI8QuEAY05VILUl3pQ1hn/
 jw+T/IhGQpvAw1c6pSdPvKkr5jelNF1fnmeR0m1xyZoIYcI+iiuW/Iu/WuUGZ78hcMqh
 g3CL3V0pe63hx+L+xlWLkuQYwLCKRyQisrQbl5WPPG/B41ZvBuJHJD4o+wnBbckPGoPv
 +Te9gcqwUjKpRSQzInv64N+/QE1a66zs8A2lobBuKuwo9AQpa9VNf4fHPoHMx9fwcBti
 IidpbYBiGaMKnhEyScbdIEcpDlMFoWgbx4jdM2zf6T2D0AGgMVW6xy9iTym6V3D3XpLt
 4P/A==
X-Gm-Message-State: APjAAAUw2cOgV1VYcKj1YZxKTjy6gUlCvPOU3WwDB6Gr9v5ZN4tAQlyX
 XnaBpqC5Zp35+2ysjRT1pA==
X-Google-Smtp-Source: APXvYqzTd+SUScnI+raBK375orxhwOZtIjBl7LTQ+SrdOuzX+fB6KoQ7w06WVT6SBK2QaP+LwnqcBg==
X-Received: by 2002:a37:9ece:: with SMTP id h197mr75339469qke.50.1560867025673; 
 Tue, 18 Jun 2019 07:10:25 -0700 (PDT)
Received: from localhost ([64.188.179.192])
 by smtp.gmail.com with ESMTPSA id s11sm9602685qte.49.2019.06.18.07.10.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 07:10:25 -0700 (PDT)
Date: Tue, 18 Jun 2019 08:10:23 -0600
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Message-ID: <20190618141023.GA20154@bogus>
References: <20190617143322.4332-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617143322.4332-1-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: glider.be]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hdEoi-0033n3-W4
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: Add missing newline
 at end of file
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 17 Jun 2019 16:33:22 +0200, Geert Uytterhoeven wrote:
> "git diff" says:
> 
>     \ No newline at end of file
> 
> after modifying the files.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt      | 2 +-
>  .../devicetree/bindings/pinctrl/nuvoton,npcm7xx-pinctrl.txt     | 2 +-
>  Documentation/devicetree/bindings/regulator/pv88060.txt         | 2 +-
>  Documentation/devicetree/bindings/sound/cs42l73.txt             | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 

Applied, thanks.

Rob


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
