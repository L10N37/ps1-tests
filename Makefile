TOPTARGETS = build clean

IMAGES = common \
		input/pad \
		cdrom/disc-swap \
		cdrom/getloc \
		cdrom/timing \
		cdrom/terminal \
		cpu/access-time \
		cpu/code-in-io \
		cpu/cop \
		cpu/io-access-bitwidth \
		dma/chain-looping \
		dma/chopping \
		dma/dpcr \
		dma/otc-test \
		gpu/animated-triangle \
		gpu/bandwidth \
		gpu/benchmark \
		gpu/clipping \
		gpu/clut-cache \
		gpu/gp0-e1 \
		gpu/gpustat \
		gpu/lines \
		gpu/mask-bit \
		gpu/quad \
		gpu/rectangles \
		gpu/texture-flip \
		gpu/texture-overflow \
		gpu/transparency \
		gpu/triangle \
		gpu/uv-interpolation \
		gpu/vram-to-vram-overlap \
		gpu/version-detect \
		gte/test-all \
		gte-fuzz \
		mdec/4bit \
		mdec/8bit \
		mdec/frame \
		mdec/movie \
		mdec/step-by-step-log \
		spu/memory-transfer \
		spu/ram-sandbox \
		spu/stereo \
		spu/test \
		spu/toolbox \
		timer-dump \
		timers

all: $(TOPTARGETS)

$(TOPTARGETS): $(IMAGES)
$(IMAGES):
	@$(MAKE) --no-print-directory -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTAGETS) $(IMAGES)
