# Set Theory

## Sets, Unions, and Intersections

### Example: Refer to Definition 1.2.1

Let $A = \{0,1,2,3,4,5,6,7,8,9,10\}$ and $B = \{0,2,4,6,8,10\}$. 

Find $A \cup B, A \cap B$, and $A\setminus B$.


```julia
A = Set(range(0, 10, step = 1))
```




    Set{Int64} with 11 elements:
      5
      7
      8
      1
      0
      4
      6
      2
      10
      9
      3




```julia
B = Set(range(0, 10, step = 2))
```




    Set{Int64} with 6 elements:
      0
      4
      6
      2
      10
      8




```julia
A == B
```




    false




```julia
∪(A, B) # union(A,B) 
```




    Set{Int64} with 11 elements:
      5
      7
      8
      1
      0
      4
      6
      2
      10
      9
      3




```julia
∩(A, B) # intersect(A, B)
```




    Set{Int64} with 6 elements:
      0
      4
      6
      2
      10
      8




```julia
setdiff(A, B)
```




    Set{Int64} with 5 elements:
      5
      7
      1
      9
      3



## Functions


```julia
using Pkg
Pkg.add(["LibGEOS", "Plots", "LaTeXStrings"])
```

    [32m[1m    Updating[22m[39m registry at `~/.julia/registries/General`
    [32m[1m    Updating[22m[39m registry at `~/.julia/registries/JuliaComputingRegistry`
    [32m[1m   Resolving[22m[39m package versions...
    [32m[1m    Updating[22m[39m `~/.julia/environments/v1.6/Project.toml`
     [90m [b964fa9f] [39m[92m+ LaTeXStrings v1.2.1[39m
     [90m [a90b1aa1] [39m[92m+ LibGEOS v0.6.7[39m
    [32m[1m    Updating[22m[39m `~/.julia/environments/v1.6/Manifest.toml`
     [90m [fa961155] [39m[92m+ CEnum v0.4.1[39m
     [90m [cf35fbd7] [39m[92m+ GeoInterface v0.5.5[39m
     [90m [a90b1aa1] [39m[92m+ LibGEOS v0.6.7[39m
     [90m [d604d12d] [39m[92m+ GEOS_jll v3.9.0+0[39m
    [32m[1mPrecompiling[22m[39m project...
    [32m  ✓ [39m[90mPDMats[39m
    [32m  ✓ [39m[90mUnPack[39m
    [32m  ✓ [39m[90mReadOnlyArrays[39m
    [32m  ✓ [39m[90mExprTools[39m
    [32m  ✓ [39m[90mCodeTracking[39m
    [32m  ✓ [39m[90mShiftedArrays[39m
    [32m  ✓ [39m[90mTranscodingStreams[39m
    [32m  ✓ [39m[90mNullables[39m
    [32m  ✓ [39m[90mNodeJS[39m
    [32m  ✓ [39mSweepOperator
    [32m  ✓ [39m[90mGMP_jll[39m
    [32m  ✓ [39m[90mDocStringExtensions[39m
    [32m  ✓ [39m[90mCalculus[39m
    [32m  ✓ [39m[90mGenericLinearAlgebra[39m
    [32m  ✓ [39m[90mConstructionBase[39m
    [32m  ✓ [39m[90mCommonSolve[39m
    [32m  ✓ [39m[90mStructTypes[39m
    [32m  ✓ [39m[90mCombinatorics[39m
    [32m  ✓ [39m[90mQuadmath[39m
    [32m  ✓ [39m[90mProtoBuf[39m
    [32m  ✓ [39m[90mURIParser[39m
    [32m  ✓ [39mZipFile
    [32m  ✓ [39m[90mSentinelArrays[39m
    [32m  ✓ [39m[90mFillArrays[39m
    [32m  ✓ [39m[90mFilePathsBase[39m
    [32m  ✓ [39m[90mCommonSubexpressions[39m
    [32m  ✓ [39m[90mChainRulesCore[39m
    [32m  ✓ [39m[90mDataValues[39m
    [32m  ✓ [39m[90mBinaryProvider[39m
    [32m  ✓ [39m[90mMedia[39m
    [32m  ✓ [39m[90mWeakRefStrings[39m
    [32m  ✓ [39m[90mOpenSpecFun_jll[39m
    [32m  ✓ [39m[90mMemPool[39m
    [32m  ✓ [39m[90mRmath_jll[39m
    [32m  ✓ [39m[90mBenchmarkTools[39m
    [32m  ✓ [39m[90mQuadGK[39m
    [32m  ✓ [39m[90mReadStat_jll[39m
    [32m  ✓ [39m[90mParameters[39m
    [32m  ✓ [39m[90mFileIO[39m
    [32m  ✓ [39mEzXML
    [32m  ✓ [39m[90mMocking[39m
    [32m  ✓ [39m[90mGlib_jll[39m
    [32m  ✓ [39m[90mCodecZstd[39m
    [32m  ✓ [39m[90mCodecZlib[39m
    [32m  ✓ [39m[90mCodecBzip2[39m
    [32m  ✓ [39m[90mMPFR_jll[39m
    [32m  ✓ [39m[90mLogExpFunctions[39m
    [32m  ✓ [39m[90mMutableArithmetics[39m
    [32m  ✓ [39m[90mSetfield[39m
    [32m  ✓ [39m[90mCategoricalArrays[39m
    [32m  ✓ [39m[90mJSONSchema[39m
    [32m  ✓ [39m[90mJuliaInterpreter[39m
    [32m  ✓ [39m[90mRoots[39m
    [32m  ✓ [39m[90mFilePaths[39m
    [32m  ✓ [39m[90mTableShowUtils[39m
    [32m  ✓ [39m[90mSnappy[39m
    [32m  ✓ [39m[90mTableTraitsUtils[39m
    [32m  ✓ [39m[90mStaticArrays[39m
    [32m  ✓ [39m[90mThrift[39m
    [32m  ✓ [39m[90mReadStat[39m
    [32m  ✓ [39m[90mRmath[39m
    [32m  ✓ [39mJuno
    [32m  ✓ [39m[90mFlatBuffers[39m
    [32m  ✓ [39m[90mPyCall[39m
    [32m  ✓ [39m[90mFixedEffects[39m
    [32m  ✓ [39m[90mXLSX[39m
    [32m  ✓ [39m[90mMPC_jll[39m
    [32m  ✓ [39m[90mCairo_jll[39m
    [32m  ✓ [39m[90mQt5Base_jll[39m
    [32m  ✓ [39m[90mElectron[39m
    [32m  ✓ [39m[90mArrow[39m
    [32m  ✓ [39m[90mTimeZones[39m
    [32m  ✓ [39m[90mIterableTables[39m
    [32m  ✓ [39m[90mQueryOperators[39m
    [32m  ✓ [39m[90mDataTables[39m
    [32m  ✓ [39m[90mDiffResults[39m
    [32m  ✓ [39m[90mStructArrays[39m
    [32m  ✓ [39m[90mVega[39m
    [32m  ✓ [39m[90mLoweredCodeUtils[39m
    [32m  ✓ [39m[90mSpecialFunctions[39m
    [32m  ✓ [39m[90mParquet[39m
    [32m  ✓ [39m[90mCSV[39m
    [32m  ✓ [39m[90mContour[39m
    [32m  ✓ [39m[90mSymEngine_jll[39m
    [32m  ✓ [39m[90mGR_jll[39m
    [32m  ✓ [39m[90mStatFiles[39m
    [32m  ✓ [39m[90mIntervals[39m
    [32m  ✓ [39m[90mVcov[39m
    [32m  ✓ [39m[90mFeatherLib[39m
    [32m  ✓ [39m[90mExcelReaders[39m
    [32m  ✓ [39m[90mQuery[39m
    [32m  ✓ [39m[90mDiffRules[39m
    [32m  ✓ [39m[90mParquetFiles[39m
    [32m  ✓ [39m[90mRData[39m
    [32m  ✓ [39m[90mStatsFuns[39m
    [32m  ✓ [39mWooldridgeDatasets
    [32m  ✓ [39mVegaLite
    [32m  ✓ [39mSymEngine
    [32m  ✓ [39m[90mFeatherFiles[39m
    [32m  ✓ [39m[90mColorSchemes[39m
    [32m  ✓ [39m[90mGR[39m
    [32m  ✓ [39m[90mPolynomials[39m
    [32m  ✓ [39mSymPy
    [32m  ✓ [39mRevise
    [32m  ✓ [39mRDatasets
    [32m  ✓ [39m[90mGeometryBasics[39m
    [32m  ✓ [39mStatsModels
    [32m  ✓ [39m[90mExcelFiles[39m
    [32m  ✓ [39mDataVoyager
    [32m  ✓ [39m[90mForwardDiff[39m
    [32m  ✓ [39mDistributions
    [32m  ✓ [39m[90mDoubleFloats[39m
    [32m  ✓ [39mGLM
    [32m  ✓ [39mHypothesisTests
    [32m  ✓ [39mFixedEffectModels
    [32m  ✓ [39mCovarianceMatrices
    [32m  ✓ [39m[90mPlotUtils[39m
    [32m  ✓ [39m[90mTextParse[39m
    [32m  ✓ [39mRegressionTables
    [32m  ✓ [39mVegaDatasets
    [32m  ✓ [39m[90mCSVFiles[39m
    [32m  ✓ [39m[90mRecipesPipeline[39m
    [32m  ✓ [39m[90mPlotThemes[39m
    [32m  ✓ [39mQueryverse
    [32m  ✓ [39m[90mMathOptInterface[39m
    [32m  ✓ [39mPlots
    [32m  ✓ [39mJuMP
      127 dependencies successfully precompiled in 87 seconds (123 already precompiled)



```julia
using LibGEOS, Plots, LaTeXStrings
```

### Example 1.5.2

Find the domain and range of following functions.

- For all $x$ in $[-3,3)$,
 \begin{align}
        F(x) = (x+1)^2.
 \end{align}

- For all $x$ in $\mathbb{R}$, 
 \begin{align}
        F(x) = 2^x.
 \end{align}


```julia
Eg1_5_2_F1(x) = (x+1)^2
```




    Eg1_5_2_F1 (generic function with 1 method)




```julia
Eg1_5_2_F2(x) = 2^x
```




    Eg1_5_2_F2 (generic function with 1 method)




```julia
plot([Eg1_5_2_F1, Eg1_5_2_F2], -3, 3, 
	title = "Example 1.5.2", 
	label = [L"F(x) = (x+1)^2" L"F(x) = 2^x"])
```




    
![svg](output_15_0.svg)
    



### Example 1.5.9

Consider 
\begin{align}
       F(x) & = x^2 - 2, \quad x\in \mathbb{R} \\
       G(x) & = -x + 1, \quad x\in \mathbb{R}.  
\end{align}

- Check whether each of the two functions is a one-to-one functions.

- Verify that $\mathfrak{R}(F) \subseteq \mathfrak{D}(G)$, and find the domain and range of $(G\circ F)(x)$.


```julia
Eg1_5_9_F(x) = x^2 - 2
```




    Eg1_5_9_F (generic function with 1 method)




```julia
Eg1_5_9_G(x) = -x + 1
```




    Eg1_5_9_G (generic function with 1 method)




```julia
plot([Eg1_5_9_F, Eg1_5_9_G, Eg1_5_9_G ∘ Eg1_5_9_F], -5, 5,
	title = "Example 1.5.9",
	label = [L"F(x) = x^2 - 2" L"G(x) = -x + 1" L"(G \circ F)(x) = -x^2 + 3"])
```




    
![svg](output_19_0.svg)
    



### Example 1.5.11

The following functions $F$ and $G$ are defined for all real $x$ by the equations given. In each case where the composite function $G\circ F$ can be formed, give the domain of $G\circ F$ and a formula for $(G\circ F)(x)$.

 \begin{align}
        F(x) & = 
        \left\{\begin{array}{ll}
        2x, & 0\leq x\leq 1 \\
        1, & \mbox{otherwise},
        \end{array}\right. \\
        G(x) & = 
        \left\{\begin{array}{ll}
        x^2, & 0\leq x\leq 1 \\
        0, & \mbox{otherwise}.
        \end{array}\right.        
 \end{align} 


```julia
function Eg1_5_11_F(x)
           if x <= 1 && x >= 0
               return 2*x
           else
               return 1
           end
       end
```




    Eg1_5_11_F (generic function with 1 method)




```julia
function Eg1_5_11_G(x)
           if x <= 1 && x >= 0
               return x^2
           else
               return 0
           end
       end
```




    Eg1_5_11_G (generic function with 1 method)




```julia
plot([Eg1_5_11_F, Eg1_5_11_G, Eg1_5_11_G ∘ Eg1_5_11_F], -5, 5,
	title = "Example 1.5.11", 
	label = [L"F(x)" L"G(x)" L"(G \circ F)(x)"])
```




    
![svg](output_23_0.svg)
    


